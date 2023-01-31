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
	inspectable::add_inspectable_weapon( GetWeapon("t9_410ironhide"), 6.63 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_410ironhide_up"), 6.63 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_1911"), 3.33 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_1911_rdw_up"), 5 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_1911_ldw_up"), 5 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_ak47"), 5.83 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_ak47_up"), 5.83 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_rpk"), 5.83 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_rpk_up"), 5.83 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_ak74u"), 5.93 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_ak74u_up"), 5.93 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_amp63"), 3.33 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_amp63_rdw_up"), 3.16 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_amp63_ldw_up"), 3.16 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_aug"), 6.83 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_aug_up"), 6.83 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_aug_hbar"), 6.83 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_aug_hbar_up"), 6.83 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_bullfrog"), 4.36 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_bullfrog_up"), 4.36 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_c58"), 5.26 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_c58_up"), 5.26 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_hk21"), 5.26 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_hk21_up"), 5.26 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_carv2"), 8.1 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_carv2_up"), 8.1 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_diamatti"), 6.23 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_diamatti_up"), 6.23 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_dmr14"), 5.86 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_dmr14_up"), 5.86 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_m14classic"), 5.86 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_m14classic_up"), 5.86 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_em2"), 4.83 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_em2_up"), 4.83 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_fara83"), 6.86 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_fara83_up"), 6.86 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_ffar1"), 4.83 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_ffar1_up"), 4.83 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_gallo_sa12"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_gallo_sa12_up"), 4.33 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_grav"), 7.03 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_grav_up"), 7.03 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_galatz"), 7.03 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_galatz_up"), 7.03 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_groza"), 6.13 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_groza_up"), 6.13 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_hauer77"), 3.56 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_hauer77_up"), 3.56 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_krig6"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_krig6_up"), 4.33 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_ksp45"), 4.9 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_ksp45_up"), 4.9 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_lapa"), 4.9 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_lapa_up"), 4.9 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_lc10"), 5.26 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_lc10_up"), 5.26 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_lw3_tundra"), 7 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_lw3_tundra_up"), 7 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_m16"), 6.13 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_m16_up"), 6.13 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_m60"), 10 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_m60_up"), 10 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_m79"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_m79_up"), 4.33 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_m82"), 8.13 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_m82_up"), 8.13 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_mac10"), 6.13 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_mac10_up"), 6.13 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_magnum"), 5.1 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_magnum_up"), 5.1 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_marshal"), 6.43 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_marshal_rdw_up"), 5.93 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_marshal_ldw_up"), 5.93 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_mg82"), 9.73 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_mg82_up"), 9.73 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_milano821"), 6.03 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_milano821_up"), 6.03 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_mp5"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_mp5_up"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_mp5k"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_mp5k_up"), 4.33 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_nail_gun"), 5.63 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_nail_gun_up"), 5.63 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_ots9"), 3.83 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_ots9_up"), 3.83 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_pelington703"), 6.56 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_pelington703_up"), 6.56 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_ppsh41_base"), 7.56 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_ppsh41_base_up"), 7.56 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_ppsh41_drum"), 7.56 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_ppsh41_drum_up"), 7.56 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_qbz83"), 6.13 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_qbz83_up"), 6.13 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_rpd"), 6.23 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_rpd_up"), 6.23 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_rpg7"), 6.63 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_rpg7_up"), 6.63 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_stoner63"), 5.86 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_stoner63_up"), 3.76 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_streetsweeper"), 5.6 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_streetsweeper_up"), 5.6 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_swiss_k31_scope"), 6.23 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_swiss_k31_scope_up"), 6.23 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_swiss_k31_irons"), 6.23 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_swiss_k31_irons_up"), 6.23 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_tec9"), 4.9 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_tec9_up"), 4.9 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_type63"), 5.7 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_type63_up"), 5.7 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_xm4"), 5.16 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_xm4_up"), 4.6 );
	
	inspectable::add_inspectable_weapon( GetWeapon("t9_zrg20mm"), 6.67 );
	inspectable::add_inspectable_weapon( GetWeapon("t9_zrg20mm_up"), 6.67 );

	zm_usermap::main();
	
	level._zombie_custom_add_weapons =&custom_add_weapons;
	
	//Setup the levels Zombie Zone Volumes
	level.zones = [];
	level.zone_manager_init_func =&usermap_test_zone_init;
	init_zones[0] = "start_zone";
	level thread zm_zonemgr::manage_zones( init_zones );

	level.pathdist_type = PATHDIST_ORIGINAL;

	// Starting Weapon
	startingWeapon = "t9_1911";
	weapon = getWeapon(startingweapon);
	level.start_weapon = (weapon);

	// Laststand Weapon
	laststandWeapon = "t9_1911_rdw_up";
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