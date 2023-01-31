/*
	
	inspectable weapons
	
	this was made for MP! if there's any problems in zombies, contact me on discord or modme!~
	
	written by: lilrobot
	makes it so you can look at your pretty guns in a videogame
	
	instructions: add your weapon AFTER init() executes, BEFORE load() executes, and AFTER the weapon is precached with the following function:
	add_inspectable_weapon( GetWeapon( "YOUR WEAPON NAME HERE" ), DESIRED_INSPECT_TIME_HERE );
	
	made for PUBLIC USE BY COMMUNITY MEMBERS
	
*/


#using scripts\codescripts\struct;
#using scripts\shared\callbacks_shared;
#using scripts\shared\array_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\math_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\util_shared;
#using scripts\shared\system_shared;

#insert scripts\shared\shared.gsh;
#insert scripts\shared\version.gsh;

#namespace inspectable;

REGISTER_SYSTEM( "inspectable", &init, undefined )

function init()
{
	//IMPORTANT: EXEC INIT *BEFORE* LOAD::MAIN();

	level.idisable_stances = true; //if true, going prone makes it so you can't inspect.
	level.idisable_trigger_detect = true; //if true, then inspects can't happen if the player is touching a USE trigger.
										//VERY IMPORTANT NOTE: i know some triggers are regular triggers with a UseButtonPressed() approach, which is odd.
										//if you want to include these, add ".iUseTrigger = true" as an attribute and the script will check for it. it MUST be a trigger!

	callback::on_connect( &wait_for_inspect );
	callback::on_spawned( &reset_inspect_var );

	//here's a sample call:
	//add_inspectable_weapon( GetWeapon("ar_g36c"), 3.5 );
	//you should call this WITHIN a map, and not modify this init.
}

function reset_inspect_var()
{
	self.inspecting = false;
}

function check_if_touching_illegal_trigger()
{
	
	trigs = [];
	
	ARRAY_ADD( trigs, GetEntArray( "trigger_use", "classname" ) );
	ARRAY_ADD( trigs, GetEntArray( "trigger_radius", "classname" ) );
	ARRAY_ADD( trigs, GetEntArray( "trigger_use_touch", "classname" ) );
	
	foreach(trigArr in trigs)
	{
		foreach(trig in trigArr)
		{
			if(isSubStr(trig.classname, "use") || isSubStr(trig.classname, "exterior_goal") || (isDefined(trig.iUseTrigger) && trig.iUseTrigger))
			{
				if(self isTouching(trig))
					return true;
			}
		}
	}
	
	zbarriers = struct::get_array( "exterior_goal", "targetname" );
		
	foreach(z in zbarriers)
	{
		if(Distance(self.origin, z.origin) < 100)
			return true;
	}
		
	return false;
}

function wait_for_inspect()
{
	self endon("disconnect");
	
	for(;;)
	{
		if(self ReloadButtonPressed())
		{
		
			if(level.idisable_stances)
			{
				if(self GetStance() == "prone")
				{
					WAIT_SERVER_FRAME;
					continue;
				}
			}
			
			if( self check_if_touching_illegal_trigger() || !isDefined(level.iweap) )
			{
				WAIT_SERVER_FRAME;
				continue;
			}
		
			//NOTE: controllers will have issues inspecting if their mag isn't full, so i'll just ban it!
			if( self GamepadUsedLast() && ((self GetWeaponAmmoClip( self GetCurrentWeapon() ) != self GetCurrentWeapon().clipSize) || (self GetWeaponAmmoClip( self GetCurrentWeapon() ) == 0 && self GetWeaponAmmoStock( self GetCurrentWeapon() ) != 0 ) ) )
			{
				WAIT_SERVER_FRAME;
				continue;
			}
			
			wait(0.5); //must hold use for > half a second..
			
			//now we've met the criteria, check if it's an inspectable weapon!
			can_inspect = self held_inspectable_weapon();
			//iPrintLnBold(can_inspect);


			//&& !self IsUsingOffHand()
			if( self ReloadButtonPressed() && can_inspect && !self IsReloading() && !self IsSwitchingWeapons() && !self IsThrowingGrenade() ) //make sure you're not reloading, using offhands OR throwing grenades
			{
				self DisableWeaponCycling();
				self thread allow_fire_interrupt();
				self thread allow_switch_interrupt();
				
				if(level.idisable_stances)
					self AllowedStances( "crouch", "stand" );
					
				self do_inspect();
				self clear_inspect();
			}
		}
		WAIT_SERVER_FRAME;
	}
}
function allow_switch_interrupt()
{
	self endon("disconnect");
	self endon("inspect_done");
	self endon("interrupt_inspect");
	self endon("death");
	self endon("fake_death"); //all of these make sure it cancels out if we go down or disconnect.
	self endon("player_downed");
	
	self waittill("weapon_change");
	
	self notify("interrupt_inspect");
}
function allow_fire_interrupt()
{
	self endon("disconnect");
	self endon("inspect_done");
	self endon("interrupt_inspect");
	self endon("death");
	self endon("fake_death"); //all of these make sure it cancels out if we go down or disconnect.
	self endon("player_downed");
	
	for(;;)
	{
		if(self AttackButtonPressed() || self SprintButtonPressed() || self MeleeButtonPressed())
		{
			self notify("interrupt_inspect");
		}
		WAIT_SERVER_FRAME;
	}
}
function do_inspect()
{
	self endon("disconnect");
	self endon("interrupt_inspect");
	self endon("death");
	self endon("fake_death"); //all of these make sure it cancels out if we go down or disconnect.
	self endon("player_downed");

	self.inspecting = true;

	self SetLowReady( true );
	
	wait( get_inspectable_time( self GetCurrentWeapon() ) );
}
function clear_inspect()
{
	self endon("disconnect");
	
	self notify("inspect_done");
	
	self.inspecting = false;
	self SetLowReady( false );
	self EnableWeaponCycling();	

	
	if(level.idisable_stances)
		self AllowedStances( "crouch", "stand", "prone" );
}
function add_inspectable_weapon( new_iweap, itime )
{
	if(!isDefined(new_iweap) || !isDefined(itime))
		return;

	
	if(!isDefined(level.iweap))
	{
		level.iweap = [];
	}
	
	foreach(iweap in level.iweap)
	{
		if(new_iweap.rootWeapon.name == iweap.weapon.name)
			return; //this weapon's already been added!
	}
	
	struct = SpawnStruct();
	
	struct.weapon = new_iweap;
	struct.itime = itime;
	
	ARRAY_ADD( level.iweap, struct );
}
function get_inspectable_time( new_iweap )
{
	foreach(iweap in level.iweap)
	{
		if(new_iweap.name == iweap.weapon.name)
			return iweap.itime;
	}
	
	return 0;
}
function held_inspectable_weapon()
{
	new_iweap = self GetCurrentWeapon();

	foreach(iweap in level.iweap)
	{	
		if(new_iweap.rootWeapon.name == iweap.weapon.name)
			return true;
	}
	
	return false;
}


/*
(lilrobot fennekin of authenticity)
MMMMMMMMMMMMMMMMMNysmMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMNy-..-omMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMmNMMMMMm+......:hMNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMdosmMMMd:...--...-oNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMmsoosNNd:...-:o/....+mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMhooooym/..oo+::oo..../mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMNmyooooosy/-hssys/os-.../mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMNydyoooooosyodyoosyyho....+NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNNmdhsoo++/+dMMMMMMM
NNhohhoooooooyhhhoooosyd/....oMNMMMMMMMMMMMMMMMMMMMMMMMMNdyo/:--........sNMMMMMM
MNsosdsoooooydsydhoooooyh.....hNMMMMMMMMMMMMMMMMMMMMNds/:-....--:-......oNNMMMMM
mdooohyoooooydoosyhsooood/....:mmMMMMMMMMMMMMMMMNmh+:-....-/+oo+/-......sMMMMMMM
Mhoooshsooooodyooosysoooyy-....oNMMMMMMMMMMMMMNh+:.....:+oo+/::::-.....-dMMMMMMM
Mhoooossooooosdsoooooooood-....:mMMMMMMMMMMNms:-....-+shhysssssoo/:-.../NmMMMMNN
Mdsoooooooooooshysoooooood:.....yNNMMMMMMNdo-.....:oyyssoooooossssyy-.-yMNNNdhyN
Mmssoooooooooooossoooooood/...../mNMMMMNd+-.....:oysooooooooooosyhdyosshhysssyNM
MMhsssoooooooooooooooosssy/.....-/oshddo-.....-ohsoooooooosyyyhdhyysooooooosdMMM
MMNyssssooooooooooosys+:-............--......+yyoooooooooosssoosshdoooooosymMMMM
MMMmyssssssooooosys+:......................:shsoooooooooooooossyhyoooosshhhNMMMM
MMMMmysssssssssyy/-........................-oyooooooooooossyyhysooossyhyssmMMMMM
MMMMMNdysssssyho-...............-............/ssoooooooyyyyssoooosyyysoosmMMMMMM
MMMMMMMmhyssyh+..---......:-...:/.............-ysooooooooooooooooooooosymMMMMMMM
MMMMNMMNMNhyd+.:ososo:..../+..-o-...--.........-hsooooooooooooooooosssdNMMMMMMMM
MMNMyohmNNmhh-/h/``:sho...-s-.+/..:+:-..........ohoooooooooooosssssshmMMMMMMMMMM
MMMMd.`.-://:-h-  +s`+d+...+--o--++-..-:/++/:...:dsssssssssssssssshmMMMMMMMMMMMM
MMMMmo-      .y  .ho+hyd-..-.--.::..-oyyyhdoho-.:dsssssssssssssydNMMMMMMMMMMMMMM
MMMNNoo:`    `s` -hohhyd:..::-.....+dy:oooh..m/.:dsssssssssyhdmMMMMMMMMMMMMMMMMM
MMMMMm+//-`   :/ .hoyyh-`/hhhhy: `/shoydoyy` d/.odyyyhhddmNNMMMMMMMMMMMMMMMMMMMM
MMMMMMNo.-:.   .` :sss-  odhhhdo  `yssdssh. :y..yyoymNMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMd/`        ``    `-+oo/`   ysossy- -o`  `-/+sssssdMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMNh/.`        -/.`         -+o+:` .:`         `.+NNMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMdo:``     :ddyo++++++s-                 `-/hMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMNds/-````oy/////++ys`          .--:/+sdNMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMmds+:-/ooo+oss/`          `--/+ydNMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMNmdhhyso+////////+osyhmmmMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmmMMMMMMMMdMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
*/