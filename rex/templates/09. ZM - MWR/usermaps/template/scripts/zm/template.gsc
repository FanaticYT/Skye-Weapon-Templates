#using scripts\codescripts\struct;

#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\compass;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#insert scripts\shared\shared.gsh;
#insert scripts\shared\version.gsh;

#insert scripts\zm\_zm_utility.gsh;

#using scripts\zm\_load;
#using scripts\zm\_zm;
#using scripts\zm\_zm_audio;
#using scripts\zm\_zm_powerups;
#using scripts\zm\_zm_utility;
#using scripts\zm\_zm_weapons;
#using scripts\zm\_zm_zonemgr;

#using scripts\shared\ai\zombie_utility;

//Perks
#using scripts\zm\_zm_perks;
#insert scripts\zm\_zm_perks.gsh;

#using scripts\zm\_zm_pack_a_punch;
#using scripts\zm\_zm_pack_a_punch_util;
#using scripts\zm\_zm_perk_additionalprimaryweapon;
#using scripts\zm\_zm_perk_doubletap2;
#using scripts\zm\_zm_perk_deadshot;
#using scripts\zm\_zm_perk_juggernaut;
#using scripts\zm\_zm_perk_quick_revive;
#using scripts\zm\_zm_perk_sleight_of_hand;
#using scripts\zm\_zm_perk_staminup;
#using scripts\zm\_zm_perk_widows_wine;

//Powerups
#using scripts\zm\_zm_powerup_double_points;
#using scripts\zm\_zm_powerup_carpenter;
#using scripts\zm\_zm_powerup_fire_sale;
#using scripts\zm\_zm_powerup_free_perk;
#using scripts\zm\_zm_powerup_full_ammo;
#using scripts\zm\_zm_powerup_insta_kill;
#using scripts\zm\_zm_powerup_nuke;
//#using scripts\zm\_zm_powerup_weapon_minigun;

//Traps
#using scripts\zm\_zm_trap_electric;

// Inspect Script
#using scripts\lilrobot\_inspectable_weapons;

#using scripts\zm\zm_usermap;

// Fix Power Lag
#precache("triggerstring", "ZOMBIE_NEED_POWER");
#precache("triggerstring", "ZOMBIE_ELECTRIC_SWITCH");
#precache("triggerstring", "ZOMBIE_ELECTRIC_SWITCH_OFF");

#precache("triggerstring", "ZOMBIE_PERK_PACKAPUNCH", "5000");
#precache("triggerstring", "ZOMBIE_PERK_PACKAPUNCH", "1000");
#precache("triggerstring", "ZOMBIE_PERK_PACKAPUNCH_AAT", "2500");
#precache("triggerstring", "ZOMBIE_PERK_PACKAPUNCH_AAT", "500");

#precache("triggerstring", "ZOMBIE_RANDOM_WEAPON_COST", "950");
#precache("triggerstring", "ZOMBIE_RANDOM_WEAPON_COST", "10");

#precache("triggerstring", "ZOMBIE_PERK_QUICKREVIVE", "500");
#precache("triggerstring", "ZOMBIE_PERK_QUICKREVIVE", "1500");
#precache("triggerstring", "ZOMBIE_PERK_FASTRELOAD", "3000");
#precache("triggerstring", "ZOMBIE_PERK_DOUBLETAP", "2000");
#precache("triggerstring", "ZOMBIE_PERK_JUGGERNAUT", "2500");
#precache("triggerstring", "ZOMBIE_PERK_MARATHON", "2000");
#precache("triggerstring", "ZOMBIE_PERK_DEADSHOT", "1500");
#precache("triggerstring", "ZOMBIE_PERK_WIDOWSWINE", "4000");
#precache("triggerstring", "ZOMBIE_PERK_ADDITIONALPRIMARYWEAPON", "4000");

#precache("triggerstring", "ZOMBIE_UNDEFINED");

//*****************************************************************************
// MAIN
//*****************************************************************************

function main()
{
	inspectable::add_inspectable_weapon( GetWeapon("h1_44magnum"), 3.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_44magnum_up"), 3.33 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_ak47"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_ak47_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_ak74u"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_ak74u_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_m82a1"), 3.5 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_m82a1_up"), 3.5 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_m1014"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_m1014_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_beredmk8"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_beredmk8_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_m9"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_m9_rdw_up"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_m9_ldw_up"), 4.66 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_bos14"), 4.16 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_bos14_up"), 4.16 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_br9"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_br9_up"), 4.66 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_d25s"), 3.5 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_d25s_up"), 3.5 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_deagle"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_deagle_rdw_up"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_deagle_ldw_up"), 4.66 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_dragunov"), 3.5 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_dragunov_up"), 3.5 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_fang45"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_fang45_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_g3"), 3.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_g3_up"), 3.33 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_g36c"), 3.5 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_g36c_up"), 3.5 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_kam12"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_kam12_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_lynxcq300"), 3.53 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_lynxcq300_up"), 3.53 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_m4carbine"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_m4carbine_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_m14"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_m14_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_m16a4"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_m16a4_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_m21"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_m21_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_m40a3"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_m40a3_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_m60e4"), 5.5 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_m60e4_up"), 5.5 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_m249"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_m249_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_m1911"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_m1911_rdw_up"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_m1911_ldw_up"), 4.66 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_mac10"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_mac10_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_mini_uzi"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_mini_uzi_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_mp5"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_mp5_up"), 4.66 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_mp44"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_mp44_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_p90"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_p90_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_pkm"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_pkm_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_pkpsd9"), 3.5 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_pkpsd9_up"), 3.5 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_prokolot"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_prokolot_up"), 4.66 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_ranger"), 3.66 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_ranger_up"), 3.66 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_ranger_rdw"), 3 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_ranger_ldw"), 3 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_ranger_rdw_up"), 3 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_ranger_ldw_up"), 3 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_rem700"), 3.5 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_rem700_up"), 3.5 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_rpd"), 5.5 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_rpd_up"), 5.5 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_rpg7"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_rpg7_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_stac"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_stac_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_skorpion"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_skorpion_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_usp45"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_usp45_rdw_up"), 4.5 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_usp45_ldw_up"), 4.5 );

	inspectable::add_inspectable_weapon( GetWeapon("h1_win1200"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("h1_win1200_up"), 4 );

	zm_usermap::main();
	
	level._zombie_custom_add_weapons =&custom_add_weapons;
	
	//Setup the levels Zombie Zone Volumes
	level.zones = [];
	level.zone_manager_init_func =&usermap_test_zone_init;
	init_zones[0] = "start_zone";
	level thread zm_zonemgr::manage_zones( init_zones );

	level.pathdist_type = PATHDIST_ORIGINAL;

	// Starting Weapon
	startingWeapon = "h1_m1911";
	weapon = getWeapon(startingweapon);
	level.start_weapon = (weapon);

	// Laststand Weapon
	laststandWeapon = "h1_m1911_rdw_up";
	level.default_laststandpistol = GetWeapon(laststandWeapon);
	level.default_solo_laststandpistol = GetWeapon(laststandWeapon);

	//Start Points
	level.player_starting_points = 500;

	level zm_perks::spare_change();

	level thread CheckForPower();
	level thread better_max_ammo();
}

function CheckForPower()
{
	level util::set_lighting_state(0);
	level waittill("power_on");
	level util::set_lighting_state(1);
}

function better_max_ammo()
{
	while(1)
	{
		level waittill( "zmb_max_ammo_level" );
		foreach(player in GetPlayers())
		{
			player.ScreecherPrimaryWeapons = player GetWeaponsListPrimaries();
			foreach(gun in player.ScreecherPrimaryWeapons)
			{
				weap = GetWeapon(gun.name);
				player SetWeaponAmmoClip(gun, weap.clipSize);
			}
		}
	}
}

function usermap_test_zone_init()
{
	level flag::init( "always_on" );
	level flag::set( "always_on" );
}	

function custom_add_weapons()
{
	zm_weapons::load_weapon_spec_from_table("gamedata/weapons/zm/zm_levelcommon_weapons.csv", 1);
}