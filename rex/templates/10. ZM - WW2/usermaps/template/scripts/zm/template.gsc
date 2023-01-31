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
	inspectable::add_inspectable_weapon( GetWeapon("s2_blyskawica"), 3.53 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_blyskawica_up"), 3.53 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_erma_emp"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_erma_emp_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_kgm21"), 4.16 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_kgm21_up"), 4.16 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_lad"), 5.5 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_lad_up"), 5.5 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_wz35"), 5.83 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_wz35_up"), 5.83 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_as44"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_as44_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_m1927"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_m1927_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_austen"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_austen_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_avs36"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_avs36_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_bar"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_bar_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_bazooka"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_bazooka_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_bechowiec"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_bechowiec_up"), 4.66 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_beretta38"), 5 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_beretta38_up"), 5 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_blunderbuss"), 4.16 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_blunderbuss_up"), 4.16 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_breda30"), 5.16 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_breda30_up"), 5.16 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_bredapg35"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_bredapg35_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_bren"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_bren_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_chatellerault"), 5.83 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_chatellerault_up"), 5.83 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_delisle"), 4.5 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_delisle_up"), 4.5 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_emp44"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_emp44_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_enfieldno2"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_enfieldno2_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_fedorov"), 4.46 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_fedorov_up"), 4.46 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_fg42"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_fg42_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_gewehr43"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_gewehr43_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_grease_gun"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_grease_gun_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_grossfuss_stg"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_grossfuss_stg_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_kar98k_scope"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_kar98k_scope_up"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_kar98k_irons"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_kar98k_irons_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_kbsp38m"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_kbsp38m_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_lee_enfield"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_lee_enfield_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_lewis"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_lewis_up"), 5.13 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_luger"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_luger_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_m1garand"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_m1garand_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_m1a1carbine"), 4.2 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_m1a1carbine_up"), 4.2 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_m2carbine"), 4.2 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_m2carbine_up"), 4.2 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_m2hyde"), 5 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_m2hyde_up"), 5 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_m30"), 4.16 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_m30_up"), 4.16 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_m30_rifle"), 4.16 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_m30_rifle_up"), 4.16 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_m1903"), 4.16 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_m1903_up"), 4.16 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_m1911"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_m1911_rdw_up"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_m1911_ldw_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_m1919"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_m1919_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_m1928"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_m1928_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_m1941"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_m1941_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_mas36"), 5.83 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_mas36_up"), 5.83 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_mas38"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_mas38_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_m712"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_m712_rdw_up"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_m712_ldw_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_mg15"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_mg15_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_mg42"), 5.16 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_mg42_up"), 5.16 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_mg81"), 5 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_mg81_up"), 5 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_mosin"), 5.66 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_mosin_up"), 5.66 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_mp40"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_mp40_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_type2"), 5.16 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_type2_up"), 5.16 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_nz41"), 4.6 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_nz41_up"), 4.6 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_panzerschreck"), 5.03 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_panzerschreck_up"), 5.03 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_ppsh41_base"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_ppsh41_base_up"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_ppsh41_drum"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_ppsh41_drum_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_ptrs41"), 5.33 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_ptrs41_up"), 5.33 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_reichs"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_reichs_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_ribeyrolles"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_ribeyrolles_up"), 4.66 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_sdk"), 4.16 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_sdk_up"), 4.16 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_sten"), 4.5 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_sten_up"), 4.5 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_sterling"), 4.5 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_sterling_up"), 4.5 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_stg44"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_stg44_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_stinger"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_stinger_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_svt40"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_svt40_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_thompsonm1a1"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_thompsonm1a1_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_type5"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_type5_up"), 4.66 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_type38"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_type38_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_type100"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_type100_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_vmg1927"), 5 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_vmg1927_up"), 5 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_volkstg"), 4.23 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_volkstg_up"), 4.23 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_waffe28"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_waffe28_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_walther_auto"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_walther_auto_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_p38"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_p38_rdw_up"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_p38_ldw_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_wimmersperg"), 4.26 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_wimmersperg_up"), 4.26 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_win21"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_win21_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_win1894"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_win1894_up"), 4.33 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_win1897"), 4.23 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_win1897_up"), 4.23 );

	inspectable::add_inspectable_weapon( GetWeapon("s2_zk383"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("s2_zk383_up"), 4.33 );

	zm_usermap::main();
	
	level._zombie_custom_add_weapons =&custom_add_weapons;
	
	//Setup the levels Zombie Zone Volumes
	level.zones = [];
	level.zone_manager_init_func =&usermap_test_zone_init;
	init_zones[0] = "start_zone";
	level thread zm_zonemgr::manage_zones( init_zones );

	level.pathdist_type = PATHDIST_ORIGINAL;

	// Starting Weapon
	startingWeapon = "s2_m1911";
	weapon = getWeapon(startingweapon);
	level.start_weapon = (weapon);

	// Laststand Weapon
	laststandWeapon = "s2_m1911_rdw_up";
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