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
	inspectable::add_inspectable_weapon( GetWeapon("t8_abr223"), 5 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_abr223_up"), 5 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_auger_dmr"), 5 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_auger_dmr_up"), 5 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_cordite"), 6 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_cordite_up"), 6 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_escargot"), 3.53 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_escargot_up"), 3.53 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_essex_m07"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_essex_m07_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_zweihander"), 5.3 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_zweihander_up"), 5.3 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_gks"), 4.5 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_gks_up"), 4.5 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_hades"), 6.4 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_hades_up"), 6.4 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_hellion_salvo"), 5.33 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_hellion_salvo_up"), 5.33 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_hitchcock_m9"), 3.83 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_hitchcock_m9_up"), 3.83 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_icr7"), 4.26 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_icr7_up"), 4.26 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_kn57"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_kn57_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_koshka"), 4.16 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_koshka_up"), 4.16 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_m1897"), 3 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_m1897_up"), 3 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_m1927"), 3.96 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_m1927_up"), 3.96 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_maddox_rfb"), 5 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_maddox_rfb_up"), 5 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_mog12"), 5 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_mog12_up"), 5 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_mozu"), 3.73 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_mozu_up"), 3.73 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_mx9"), 5.8 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_mx9_up"), 5.8 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_outlaw"), 6.16 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_outlaw_up"), 6.16 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_paladin_hb50"), 5.06 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_paladin_hb50_up"), 5.06 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_rampart17"), 4.2 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_rampart17_up"), 4.2 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_rk7"), 3.23 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_rk7_up"), 3.23 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_saug9mm"), 4.56 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_saug9mm_up"), 4.56 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_sdm"), 4.16 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_sdm_up"), 4.16 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_sg12"), 5.5 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_sg12_up"), 5.5 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_spitfire"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_spitfire_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_strife"), 3.23 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_strife_up"), 3.23 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_swordfish"), 5.16 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_swordfish_up"), 5.16 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_titan"), 4.8 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_titan_up"), 4.8 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_vapr_xkg"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_vapr_xkg_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_vkm750"), 5.36 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_vkm750_up"), 5.36 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_daemon3xb"), 4.56 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_daemon3xb_up"), 4.56 );

	// inspectable::add_inspectable_weapon( GetWeapon("t8_grav"), 100 );		// Inspect not in Weapon File, probably due to BO4's hash
	// inspectable::add_inspectable_weapon( GetWeapon("t8_grav_up"), 100 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_kap45"), 3.23 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_kap45_up"), 3.23 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_rampage"), 4.86 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_rampage_up"), 4.86 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_swat_rft"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_swat_rft_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_switchblade_x9"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_switchblade_x9_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_vendetta"), 4.16 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_vendetta_up"), 4.16 );

	inspectable::add_inspectable_weapon( GetWeapon("t8_welling"), 2.76 );
	inspectable::add_inspectable_weapon( GetWeapon("t8_welling_up"), 2.76 );

	zm_usermap::main();
	
	level._zombie_custom_add_weapons =&custom_add_weapons;
	
	//Setup the levels Zombie Zone Volumes
	level.zones = [];
	level.zone_manager_init_func =&usermap_test_zone_init;
	init_zones[0] = "start_zone";
	level thread zm_zonemgr::manage_zones( init_zones );

	level.pathdist_type = PATHDIST_ORIGINAL;

	// Starting Weapon
	startingWeapon = "t8_strife";
	weapon = getWeapon(startingweapon);
	level.start_weapon = (weapon);

	// Laststand Weapon
	laststandWeapon = "t8_strife_up";
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