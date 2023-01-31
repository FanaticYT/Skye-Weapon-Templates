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
	inspectable::add_inspectable_weapon( GetWeapon("h2_44magnum"), 3.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_44magnum_up"), 3.33 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_aa12"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_aa12_up"), 4.33 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_acr"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_acr_up"), 4.33 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_ak47"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_ak47_up"), 4 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_at4"), 3 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_at4_up"), 3 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_aug_hbar"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_aug_hbar_up"), 4.33 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_m82a1"), 3.83 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_m82a1_up"), 3.83 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_m9"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_m9_rdw_up"), 3.83 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_m9_ldw_up"), 3.83 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_deagle"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_deagle_rdw_up"), 3.83 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_deagle_ldw_up"), 3.83 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_dragunov"), 3.5 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_dragunov_up"), 3.5 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_f2000"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_f2000_up"), 4.33 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_fal"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_fal_up"), 4.33 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_famas"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_famas_up"), 4.33 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_g18"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_g18_rdw_up"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_g18_ldw_up"), 4.33 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_intervention"), 3.5 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_intervention_up"), 3.5 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_l86_lsw"), 4.73 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_l86_lsw_up"), 4.73 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_m4a1"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_m4a1_up"), 4.33 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_m14ebr"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_m14ebr_up"), 4 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_m16a4"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_m16a4_up"), 4.33 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_m93raffica"), 3.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_m93raffica_up"), 3.33 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_m240"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_m240_up"), 4.33 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_m1014"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_m1014_up"), 4 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_m1911"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_m1911_up"), 4.66 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_mg4"), 4.73 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_mg4_up"), 4.73 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_mini_uzi"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_mini_uzi_rdw_up"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_mini_uzi_ldw_up"), 4.33 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_model1887"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_model1887_up"), 4.33 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_mp5k"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_mp5k_up"), 4.66 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_p90"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_p90_up"), 4.33 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_pp2000"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_pp2000_up"), 4.66 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_ranger"), 3.66 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_ranger_rdw_up"), 3.16 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_ranger_ldw_up"), 3.16 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_rpd"), 5.5 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_rpd_up"), 5.5 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_rpg7"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_rpg7_up"), 4 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_scarh"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_scarh_up"), 4.33 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_spas12"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_spas12_up"), 4 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_stinger"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_stinger_up"), 4 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_striker"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_striker_up"), 4.33 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_tar21"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_tar21_up"), 4.33 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_thumper"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_thumper_up"), 4.33 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_tmp"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_tmp_rdw_up"), 4.33 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_tmp_ldw_up"), 4.33 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_ump45"), 4.1 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_ump45_up"), 4.1 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_usp45"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_usp45_up"), 4.66 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_vector"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_vector_up"), 4.66 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_wa2000"), 3.83 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_wa2000_up"), 3.83 );
	
	inspectable::add_inspectable_weapon( GetWeapon("h2_win1200"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("h2_win1200_up"), 4 );

	zm_usermap::main();
	
	level._zombie_custom_add_weapons =&custom_add_weapons;
	
	//Setup the levels Zombie Zone Volumes
	level.zones = [];
	level.zone_manager_init_func =&usermap_test_zone_init;
	init_zones[0] = "start_zone";
	level thread zm_zonemgr::manage_zones( init_zones );

	level.pathdist_type = PATHDIST_ORIGINAL;

	// Starting Weapon
	startingWeapon = "h2_m1911";
	weapon = getWeapon(startingweapon);
	level.start_weapon = (weapon);

	// Laststand Weapon
	laststandWeapon = "h2_m1911_up";
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