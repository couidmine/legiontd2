require('CFRoundThinker')
require('CFSpawner')
require('playerstats')
require('buildinghelper')

hulage=0
if legiontdGameMode == nil then
	legiontdGameMode = class({})
end
function PrecacheEveryThingFromKV( context )
	local kv_files = {"scripts/npc/npc_units_custom.txt","scripts/npc/npc_abilities_custom.txt","scripts/npc/npc_heroes_custom.txt","scripts/npc/npc_abilities_override.txt","npc_items_custom.txt"}
	for _, kv in pairs(kv_files) do
		local kvs = LoadKeyValues(kv)
		if kvs then
			print("BEGIN TO PRECACHE RESOURCE FROM: ", kv)
			PrecacheEverythingFromTable( context, kvs)
		end
	end

 local zr={
    "models/items/chen/squareskystaff_weapon/squareskystaff_weapon.vmdl",
    "models/items/chen/weapon_navi/weapon_navi.vmdl",
    "models/items/chen/armor_navi/armor_navi.vmdl",
    "models/items/chen/arms_navi/arms_navi.vmdl",
    "models/items/chen/head_navi/head_navi.vmdl",
    "models/items/chen/mount_navi_new/mount_navi_new.vmdl",
    "models/items/chen/shoulder_navi/shoulder_navi.vmdl",

    "models/heroes/windrunner/windrunner_bow.vmdl",
"models/heroes/windrunner/windrunner_cape.vmdl",
"models/heroes/windrunner/windrunner_head.vmdl",
"models/heroes/windrunner/windrunner_quiver.vmdl",
"models/heroes/windrunner/windrunner_shoulderpads.vmdl",


"models/items/windrunner/wild_wind_bow/wild_wind_bow.vmdl",
"models/items/windrunner/wild_wind_cape/wild_wind_cape.vmdl",
"models/items/windrunner/wild_wind_hair/wild_wind_hair.vmdl",
"models/items/windrunner/wild_wind_jacket/wild_wind_jacket.vmdl",
"models/items/windrunner/wild_wind_quiver/wild_wind_quiver.vmdl",


"models/heroes/sven/sven_belt.vmdl",
"models/heroes/sven/sven_gauntlet.vmdl",
"models/heroes/sven/sven_mask.vmdl",
"models/heroes/sven/sven_shoulder.vmdl",
"models/heroes/sven/sven_sword.vmdl",


"models/items/sven/warrirors_retribution_pauldrons_sven/warrirors_retribution_pauldrons_sven.vmdl",
"models/items/sven/warriors_retribution_sven_sword/warriors_retribution_sven_sword.vmdl",
"models/items/sven/warriors_retribution_sven_head/warriors_retribution_sven_head.vmdl",
"models/items/sven/warriors_retribution_sven_gauntlets/warriors_retribution_sven_gauntlets.vmdl",
"models/items/sven/warriors_retribution_sven_cape/warriors_retribution_sven_cape.vmdl",
"models/items/sven/warriors_retribution_sven_belt/warriors_retribution_sven_belt.vmdl",


"models/items/silencer/whispertribunal__weapon/whispertribunal__weapon.vmdl",
"models/items/silencer/whispertribunal_arms/whispertribunal_arms.vmdl",
"models/items/silencer/whispertribunal_belt/whispertribunal_belt.vmdl",
"models/items/silencer/whispertribunal_head/whispertribunal_head.vmdl",
"models/items/silencer/whispertribunal_shield/whispertribunal_shield.vmdl",
"models/items/silencer/whispertribunal_shoulder/whispertribunal_shoulder.vmdl",


"models/items/omniknight/winged_shoulders/winged_shoulders.vmdl",
"models/items/omniknight/winged_helmet/winged_helmet.vmdl",
"models/items/omniknight/winged_gauntlet3/winged_gauntlet3.vmdl",
"models/items/omniknight/winged_cape2/winged_cape2.vmdl",
"models/items/omniknight/winged_axe/winged_axe.vmdl",
"models/heroes/omniknight/head.vmdl",


"models/items/dragon_knight/crimson_wyvern_shield/crimson_wyvern_shield.vmdl",
"models/items/dragon_knight/wyvern_bracers/Wyvern_Bracers.vmdl",
"models/items/dragon_knight/wyvern_shoulder/wyvern_shoulder.vmdl",
"models/items/dragon_knight/wyvern_sword3/Wyvern_Sword3.vmdl",
"models/items/dragon_knight/wyvern_skirt3ba/Wyvern_Skirt3ba.vmdl",
"models/items/dragon_knight/blazingsuperiority_head/blazingsuperiority_head.vmdl",
"models/items/dragon_knight/blazingsuperiority_back/blazingsuperiority_back.vmdl",


"models/items/chaos_knight/rising_chaos_blade/rising_chaos_blade.vmdl",
"models/items/chaos_knight/rising_chaos_helm/rising_chaos_helm.vmdl",
"models/items/chaos_knight/rising_chaos_spaulders/rising_chaos_spaulders.vmdl",
"models/items/chaos_knight/rising_chaos_steed/rising_chaos_steed.vmdl",


"models/items/disruptor/tempestwrath_arms/tempestwrath_arms.vmdl",
"models/items/disruptor/tempestwrath_back/tempestwrath_back.vmdl",
"models/items/disruptor/tempestwrath_head/tempestwrath_head.vmdl",
"models/items/disruptor/tempestwrath_mount/tempestwrath_mount.vmdl",
"models/items/disruptor/tempestwrath_shoulder/tempestwrath_shoulder.vmdl",
"models/items/disruptor/tempestwrath_weapon/tempestwrath_weapon.vmdl",


"models/items/death_prophet/acherontia/acherontia_dress.vmdl",
"models/items/siren/outcast_helm/outcast_helm.vmdl",

"models/items/death_prophet/corset_of_the_mortal_coil/corset_of_the_mortal_coil.vmdl",

"models/items/siren/outcast_dagger/outcast_dagger.vmdl",
"models/items/siren/outcast_spear/outcast_spear.vmdl",
--spirit_41
"models/items/death_prophet/acherontia/acherontia_dress.vmdl",
"models/heroes/death_prophet/death_prophet_hair.vmdl",
"models/heroes/death_prophet/death_prophet_dresstop.vmdl",
"models/heroes/death_prophet/death_prophet_scarf.vmdl",
"models/heroes/death_prophet/death_prophet_vortex.vmdl",

--demo_12
"models/heroes/clinkz/clinkz_head.vmdl",
"models/heroes/clinkz/clinkz_bow.vmdl",
"models/heroes/clinkz/clinkz_pads.vmdl",
"models/heroes/clinkz/clinkz_back.vmdl",
"models/heroes/clinkz/clinkz_horns.vmdl",
"models/heroes/clinkz/clinkz_gloves.vmdl",


--demo_13
"models/heroes/pugna/pugna_head.vmdl",
"models/heroes/pugna/pugna_cape.vmdl",
"models/heroes/pugna/pugna_bracers.vmdl",
"models/heroes/pugna/pugna_weapon.vmdl",
"models/heroes/pugna/pugna_belt.vmdl",

--demo_21
"models/heroes/broodmother/broodmother_hair.vmdl",
"models/heroes/broodmother/broodmother_legs.vmdl",
"models/heroes/broodmother/broodmother_abdomen.vmdl",


--demo_51
"models/heroes/nightstalker/nightstalker_wings_night.vmdl",
"models/heroes/nightstalker/nightstalker_legarmor_night.vmdl",
"models/heroes/nightstalker/nightstalker_tail_night.vmdl",


--demo_60
"models/items/shadow_demon/back_ishobolaa/back_ishobolaa.vmdl",
"models/items/shadow_demon/belt_demonlord/belt_demonlord.vmdl",
"models/items/shadow_demon/diabolical_back/diabolical_back.vmdl",
"models/items/shadow_demon/tail_bishobola/tail_bishobola.vmdl",


--demo_61
"models/items/slark/anuxi_encore_dagger/anuxi_encore_dagger.vmdl",
"models/items/doom/eternal_fire_helmet/eternal_fire_helmet.vmdl",
"models/items/doom/eternal_fire_arms/eternal_fire_arms.vmdl",
"models/items/doom/eternal_fire_back/eternal_fire_back.vmdl",
"models/items/doom/eternal_fire_belt/eternal_fire_belt.vmdl",
"models/items/doom/eternal_fire_shoulders/eternal_fire_shoulders.vmdl",
"models/items/doom/eternal_fire_tail/eternal_fire_tail.vmdl",
--orc_40
"models/items/witchdoctor/megadon_mask/megadon_mask.vmdl",
"models/items/witchdoctor/tale_tellers_poncho.vmdl",
"models/items/witchdoctor/shrunken_head_staff.vmdl",
"models/items/witchdoctor/tale_tellers_dress.vmdl",

--orc_41
"models/items/blood_seeker/arms_savagebeast.vmdl",
"models/items/blood_seeker/back_savagebeast.vmdl",
"models/items/blood_seeker/belt_savagebeast.vmdl",
"models/items/blood_seeker/head_savagebeast.vmdl",
"models/items/blood_seeker/offhand_savagebeast.vmdl",
"models/items/blood_seeker/shoulder_savagebeast.vmdl",
"models/items/blood_seeker/weapon_savagebeast.vmdl",

--orc_60
"models/items/magnataur/defender_arms/defender_arms.vmdl",
"models/items/magnataur/defender_belt/defender_belt.vmdl",
"models/items/magnataur/defender_head/defender_head.vmdl",
"models/items/magnataur/defender_horn/defender_horn.vmdl",
"models/items/magnataur/defender_weapon/defender_weapon.vmdl",

--orc_61
"models/heroes/beastmaster/beastmaster_arms.vmdl",
"models/heroes/beastmaster/beastmaster_belt.vmdl",
"models/heroes/beastmaster/beastmaster_head.vmdl",
"models/heroes/beastmaster/beastmaster_weapon.vmdl",
"models/heroes/beastmaster/beastmaster_shoulder.vmdl"

    }
     

    print("loading shiping")
	local t=#zr;
	for i=1,t do

      PrecacheResource( "model", zr[i], context)

    end

    print("done loading shiping")


end
function PrecacheEverythingFromTable( context, kvtable)
	for key, value in pairs(kvtable) do
		if type(value) == "table" then
			PrecacheEverythingFromTable( context, value )
		else
			if string.find(value, "vpcf") then
				PrecacheResource( "particle",  value, context)
				print("PRECACHE PARTICLE RESOURCE", value)
			end
			if string.find(value, "vmdl") then
				PrecacheResource( "model",  value, context)
				print("PRECACHE MODEL RESOURCE", value)
			end
			if string.find(value, "vsndevts") then
				PrecacheResource( "soundfile",  value, context)
				print("PRECACHE SOUND RESOURCE", value)
			end
		end
	end

   
end
function Precache( context )
	--[[
		Precache things we know we'll use.  Possible file types include (but not limited to):
			PrecacheResource( "model", "*.vmdl", context )
			PrecacheResource( "soundfile", "*.vsndevts", context )
			PrecacheResource( "particle", "*.vpcf", context )
			PrecacheResource( "particle_folder", "particles/folder", context )

	
	PrecacheResource( "model", "models/courier/octopus/octopus.vmdl", context)
	PrecacheResource( "model", "models/heroes/slark/slark.vmdl", context)
	
	PrecacheResource( "model", "models/heroes/lycan/lycan.vmdl", context)
	PrecacheResource( "model", "models/heroes/lycan/lycan_wolf.vmdl", context)
	PrecacheResource( "model", "models/items/beastmaster/boar/fotw_wolf/fotw_wolf.vmdl", context)
	PrecacheResource( "model", "models/props_structures/bad_ancient_destruction.vmdl", context)
	PrecacheResource( "model", "models/creeps/greevil_shopkeeper/greevil_shopkeeper.vmdl", context)
	PrecacheResource( "model", "models/props_structures/good_ancient_fountain001.vmdl", context)
	PrecacheResource( "model", "models/props_structures/good_ancient_fountain001.vmdl", context)
	
--orc兵种模型载入	
	PrecacheResource( "model", "models/creeps/neutral_creeps/n_creep_gnoll/n_creep_gnoll_frost.vmdl", context)
	PrecacheResource( "model", "models/creeps/neutral_creeps/n_creep_gnoll/n_creep_gnoll.vmdl", context)
	PrecacheResource( "model", "models/creeps/neutral_creeps/n_creep_beast/n_creep_beast.vmdl", context)
	PrecacheResource( "model", "models/creeps/neutral_creeps/n_creep_forest_trolls/n_creep_forest_troll_high_priest.vmdl", context)
	PrecacheResource( "model", "models/creeps/neutral_creeps/n_creep_troll_dark_b/n_creep_troll_dark_b.vmdl", context)
	PrecacheResource( "model", "models/items/lone_druid/true_form/form_of_the_atniw/form_of_the_atniw.vmdl", context)
	PrecacheResource( "model", "models/items/lone_druid/true_form/rabid_black_bear/rabid_black_bear.vmdl", context)
	PrecacheResource( "model", "models/heroes/witchdoctor/witchdoctor.vmdl", context)
	PrecacheResource( "model", "models/heroes/blood_seeker/blood_seeker.vmdl", context)
	PrecacheResource( "model", "models/items/lycan/wolves/icewrack_pack/icewrack_pack.vmdl", context)
	PrecacheResource( "model", "models/items/lycan/ultimate/sirius_curse/sirius_curse.vmdl", context)
	PrecacheResource( "model", "models/heroes/magnataur/magnataur.vmdl", context)
	PrecacheResource( "model", "models/heroes/beastmaster/beastmaster.vmdl", context)


	
	
	PrecacheResource( "particle", "particles/drow/wave.vpcf", context )
	
	PrecacheItemByNameSync( "item_hirer1", context )
  print("done precache")]]

  	print("BEGIN TO PRECACHE RESOURCE")
	local time = GameRules:GetGameTime()
	PrecacheEveryThingFromKV( context )
	time = time - GameRules:GetGameTime()
	print("DONE PRECACHEING IN:"..tostring(time).."Seconds")
end

-- Create the game mode when we activate
function Activate()
	GameRules.AddonTemplate = legiontdGameMode()
	
	
	GameRules.AddonTemplate:InitGameMode()
	
	
	
	print("done activate")
end

--init
function legiontdGameMode:InitGameMode()
  print("start init")
  --准备时间
	GameRules:SetPreGameTime(60)
	GameRules:GetGameModeEntity():SetThink( "OnThink", self, "GlobalThink", 2 )
  
  GameRules:SetSameHeroSelectionEnabled(true)
  GameRules:SetUseUniversalShopMode(true)
  
  GameRules:GetGameModeEntity():SetRecommendedItemsDisabled(true)
  hulage=0
  CFRoundThinker:InitPara()



  ListenToGameEvent("npc_spawned", Dynamic_Wrap(legiontdGameMode, "OnNPCSpawned"), self)
end


function legiontdGameMode:OnNPCSpawned( keys )

   local unit =  EntIndexToHScript(keys.entindex)
   
   if unit:IsHero() then                      --如果是英雄
      unit:SetAbilityPoints(0)                --取消技能点
      local j=0
      
      for j = 0,5,1 do
        local temp1=unit:GetAbilityByIndex(j) --获取技能实体
        if temp1 then
          temp1:SetLevel(1)                     --设置技能等级
        end
      end
      

      unit:AddNewModifier(unit, nil, "modifier_invulnerable", nil)  --农民无敌

      local temp=unit:GetPlayerOwnerID()
      

      yx[temp]=unit;
     --local pid=unit:GetPlayerID()             --获取玩家id
     
     --PlayerS[pid][18]:SetOwner(unit)          --设置人口拥有者
   end

end













-- Evaluate the state of the game
function legiontdGameMode:OnThink()
	  if hulage==0 then
      playerstats:init()
      print("axb")
      hulage=1
    end


  



	if GameRules:State_Get() == DOTA_GAMERULES_STATE_GAME_IN_PROGRESS then
	

 	  print("executing thinking")
		CFRoundThinker:Think()
	elseif GameRules:State_Get() >= DOTA_GAMERULES_STATE_POST_GAME then
		return nil
	end
	return 1
end


