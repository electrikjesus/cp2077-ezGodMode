-- CP77 EZGodMode mod 
-- This mod will give you as close to God Mode as possible in Cyberpunk 2077
-- with the following features:
-- 	- (maxStats) - Maxes out all your current stats and weight limit
-- 	- (maxExperience) - Maxes out your experience level
-- 	- (addMoneys) - Adds "One Million Dollars" (insert Austin Powers meme here)
-- 	- (addCyberware) - Adds all cyberware - NOT WORKING YET. Don't save and load
-- 	- (addAllItems) - Adds all legendary items

-- Copyright (C) 2021-2023 Jon West <electrikjesus@gmail.com>
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <https://www.gnu.org/licenses/>.


registerForEvent("onInit", function()
	drawPopup = false
	wWidth, wHeight = GetDisplayResolution()
	getTime = 0
	print("************************************************")
	print("* EZGodMode Mod Loaded...                      *")
	print("************************************************")
end)

function godMode()

	-- Memory
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.Memory,gameStatModifierType.AdditiveMultiplier,10))

	-- Damage
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.CritChance,gameStatModifierType.Additive,100))
    Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.CritDamage,gameStatModifierType.Additive,999999))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.DamageReductionExplosion,gameStatModifierType.AdditiveMultiplier,50))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.DamageReductionDamageOverTime,gameStatModifierType.AdditiveMultiplier,50))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.FallDamageReduction,gameStatModifierType.AdditiveMultiplier,2000))
	
	-- Weight
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.CarryCapacity,gameStatModifierType.AdditiveMultiplier,50))
	
	-- Health
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.Armor,gameStatModifierType.AdditiveMultiplier,100))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.Adrenaline,gameStatModifierType.AdditiveMultiplier,50))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.Oxygen,gameStatModifierType.AdditiveMultiplier,50))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.HealingItemMaxCharges,gameStatModifierType.AdditiveMultiplier,100))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.HealingItemsRechargeDuration,gameStatModifierType.Multiplier,0.1))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.HealingItemsCharges,gameStatModifierType.AdditiveMultiplier,100))
	
	-- Strength & Abilities
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.StrengthSkillCheckBonus,gameStatModifierType.Additive,20))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.IntelligenceSkillCheckBonus,gameStatModifierType.Additive,20))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.TechnicalSkillCheckBonus,gameStatModifierType.Additive,20))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.MinigameTimeLimitExtension,gameStatModifierType.AdditiveMultiplier,10))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.MinigameMaterialsEarned,gameStatModifierType.AdditiveMultiplier,10))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.RestoreMemoryOnDefeat,gameStatModifierType.AdditiveMultiplier,10))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.QuickHackSpreadDistance,gameStatModifierType.AdditiveMultiplier,8))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.QuickHackSpreadNumber,gameStatModifierType.AdditiveMultiplier,4))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.UltimateMemoryCostReduction,gameStatModifierType.AdditiveMultiplier,10))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.DeviceMemoryCostReduction,gameStatModifierType.AdditiveMultiplier,10))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.StealthHacksCostReduction,gameStatModifierType.AdditiveMultiplier,10))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.HasSmartLink,gameStatModifierType.AdditiveMultiplier,1))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.HasDodge,gameStatModifierType.AdditiveMultiplier,1))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.CanCrouch,gameStatModifierType.AdditiveMultiplier,1))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.CanSprint,gameStatModifierType.AdditiveMultiplier,1))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.CanJump,gameStatModifierType.AdditiveMultiplier,1))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.HasDoubleJump,gameStatModifierType.AdditiveMultiplier,1))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.CWMaskRechargeDuration,gameStatModifierType.Multiplier,0.1))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.CWMaskMaxCharges,gameStatModifierType.AdditiveMultiplier,100))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.ProjectileLauncherMaxCharges,gameStatModifierType.AdditiveMultiplier,100))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.ProjectileLauncherRechargeDuration,gameStatModifierType.Multiplier,0.1))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.CyberdeckOverclockCooldown,gameStatModifierType.Multiplier,0.1))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.GrenadesMaxCharges,gameStatModifierType.AdditiveMultiplier,100))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.GrenadesRechargeDuration,gameStatModifierType.Multiplier,0.1))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.HousingBuffsDurationBonus,gameStatModifierType.AdditiveMultiplier,100))
	Game.GetPlayer():SetWarningMessage("'I is Stuper-Hero now' toggled")
	print("Unlimited Money set by keypress")
		
end

function addMoneys()
	-- Moneys
	Game.AddToInventory("Items.money",999999999)
	Game.GetPlayer():SetWarningMessage("'I can has moneys' toggled")
	print("Unlimited Money set by keypress")
end

function enableStealth()
	-- Stealth	
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.Visibility,gameStatModifierType.AdditiveMultiplier,0))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.TBHsVisibilityCooldown,gameStatModifierType.AdditiveMultiplier,0))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.OpticalCamoRechargeDuration,gameStatModifierType.Multiplier,0.1))
	
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.Detection,gameStatModifierType.AdditiveMultiplier,0))
	
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.Evasion,gameStatModifierType.Additive,999))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.MitigationChance,gameStatModifierType.Additive,999))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.MitigationStrength,gameStatModifierType.AdditiveMultiplier,20))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.QuickHackImmunity,gameStatModifierType.AdditiveMultiplier,50))
	Game.GetStatsSystem():AddModifier(Game.GetPlayer():GetEntityID(),RPGManager.CreateStatModifier(gamedataStatType.QuickHackShield,gameStatModifierType.AdditiveMultiplier,50))
end

registerHotkey("godMode", "godMode", godMode)
registerHotkey("addMoneys", "addMoneys", addMoneys)
registerHotkey("enableStealth", "enableStealth", enableStealth)
