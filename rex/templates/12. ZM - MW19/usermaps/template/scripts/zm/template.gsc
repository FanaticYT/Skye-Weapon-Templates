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
	inspectable::add_inspectable_weapon( GetWeapon("iw8_50gs"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_50gs_rdw_up"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_50gs_ldw_up"), 4.66 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_357"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_357_up"), 4.66 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_725"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_725_up"), 5.13 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_1911"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_1911_rdw_up"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_1911_ldw_up"), 4.66 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_ak47"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_ak47_up"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_ak74u"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_ak74u_up"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_rpk"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_rpk_up"), 5.13 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_an94"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_an94_up"), 5.13 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_asval"), 5.76 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_asval_up"), 5.76 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_vintorez"), 5.46 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_vintorez_up"), 5.76 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_aug_ar"), 5.13 );	
	inspectable::add_inspectable_weapon( GetWeapon("iw8_aug_ar_up"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_aug_lmg"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_aug_lmg_up"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_aug_smg"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_aug_smg_up"), 5.13 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_ax50"), 4.73 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_ax50_up"), 4.73 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_bruenmk9"), 5.7 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_bruenmk9_up"), 5.7 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_cr56"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_cr56_up"), 5.13 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_cx9"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_cx9_up"), 5.56 );
	
	inspectable::add_inspectable_weapon( GetWeapon("iw8_dragunov"), 4.73 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_dragunov_up"), 4.73 );
	
	inspectable::add_inspectable_weapon( GetWeapon("iw8_ebr14"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_ebr14_up"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_m21ebr"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_m21ebr_up"), 5.13 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_fal"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_fal_up"), 5.13 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_fennec"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_fennec_up"), 5.13 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_finn"), 5.7 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_finn_up"), 5.7 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_chainsaw"), 5.7 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_chainsaw_up"), 5.7 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_scar17s"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_scar17s_up"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_scar_pdw"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_scar_pdw_up"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_scar_tpr"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_scar_tpr_up"), 5.13 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_fr556"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_fr556_up"), 5.13 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_grau556"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_grau556_up"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_sig550"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_sig550_up"), 5.13 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_hdr"), 4.73 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_hdr_up"), 4.73 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_holger26"), 4.73 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_holger26_up"), 4.73 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_g36k"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_g36k_up"), 5.13 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_iso"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_iso_up"), 5.13 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_jak12"), 5.23 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_jak12_up"), 5.23 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_kar98k_irons"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_kar98k_irons_up"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_kar98k_scope"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_kar98k_scope_up"), 5.13 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_kilo141"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_kilo141_up"), 5.16 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_m13"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_m13_up"), 5.13 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_m19"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_m19_up"), 4.66 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_m4a1"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_m4a1_up"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_m4a1_classic"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_m4a1_classic_up"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_m4a1_smg"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_m4a1_smg_up"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_m4a1_sniper"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_m4a1_sniper_up"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_m16a4"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_m16a4_up"), 5.13 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_m91"), 5.7 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_m91_up"), 5.7 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_mg34"), 5.7 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_mg34_up"), 5.7 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_minigun"), 5.26 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_minigun_up"), 5.26 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_mk2carbine"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_mk2carbine_up"), 5.13 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_model680"), 5.16 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_model680_up"), 5.16 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_mp5"), 5.16 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_mp5_up"), 5.16 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_mp5k"), 5.16 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_mp5k_up"), 5.16 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_mp5sd"), 5.16 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_mp5sd_up"), 5.16 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_mp7"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_mp7_up"), 4.66 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_oden"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_oden_up"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_vks"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_vks_up"), 5.13 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_origin12"), 5.16 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_origin12_up"), 5.16 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_p90"), 5.16 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_p90_up"), 5.16 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_pkm"), 5.7 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_pkm_up"), 5.7 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_bizon"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_bizon_up"), 5.13 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_r90"), 5.23 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_r90_up"), 5.23 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_raalmg"), 7.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_raalmg_up"), 7.33 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_ram7"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_ram7_up"), 5.13 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_renetti"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_renetti_rdw_up"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_renetti_ldw_up"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_beretta93r"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_beretta93r_up"), 4.66 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_rpg7"), 6.86 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_rpg7_up"), 6.86 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_rytecamr"), 4.73 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_rytecamr_up"), 4.73 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_sa87"), 5.53 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_sa87_up"), 5.53 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_sks"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_sks_up"), 5.13 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_spr208_scope"), 5.26 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_spr208_scope_up"), 5.26 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_spr208_irons"), 5.26 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_spr208_irons_up"), 5.26 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_striker45"), 5.13 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_striker45_up"), 5.13 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_sykov"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_sykov_up"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_makarovpb"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_makarovpb_rdw_up"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_makarovpb_ldw_up"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_stechkin_aps"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_stechkin_aps_rdw_up"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_stechkin_aps_ldw_up"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_stechkin_apb"), 4 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_stechkin_apb_up"), 4 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_uzi"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_uzi_up"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_mini_uzi"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_mini_uzi_up"), 4.66 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_vlkrogue"), 5.33 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_vlkrogue_up"), 5.33 );

	inspectable::add_inspectable_weapon( GetWeapon("iw8_x16"), 4.66 );
	inspectable::add_inspectable_weapon( GetWeapon("iw8_x16_up"), 4.66 );

	zm_usermap::main();
	
	level._zombie_custom_add_weapons =&custom_add_weapons;
	
	//Setup the levels Zombie Zone Volumes
	level.zones = [];
	level.zone_manager_init_func =&usermap_test_zone_init;
	init_zones[0] = "start_zone";
	level thread zm_zonemgr::manage_zones( init_zones );

	level.pathdist_type = PATHDIST_ORIGINAL;

	// Starting Weapon
	startingWeapon = "iw8_1911";
	weapon = getWeapon(startingweapon);
	level.start_weapon = (weapon);

	// Laststand Weapon
	laststandWeapon = "iw8_1911_rdw_up";
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