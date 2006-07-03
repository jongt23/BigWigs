local bboss = BabbleLib:GetInstance("Boss 1.2")
local metro = Metrognome:GetInstance("1")

BigWigsCThun = AceAddon:new({
	name          	= "BigWigsCThun",
	cmd           	= AceChatCmd:new({}, {}),

	zonename = BabbleLib:GetInstance("Zone 1.2")("Ahn'Qiraj"),
	enabletrigger = bboss("Eye of C'Thun"),
	bossname = bboss("Eye of C'Thun"),

	toggleoptions = GetLocale() == "koKR" and {
		notBosskill = "보스 사망",
	} or { 
		notStartWarn = "Start warning",
		notGroupWarning = "Dark glare on group X warning",
		notGlareWarn = "Dark glare warning",
		notGlare5Sec = "Dark glare 5-sec warning",
		notGlareBar = "Dark glare timerbar",
		notPositions5Sec = "Dark glare end 5-sec warning",
		notPositions = "Dark glare end warning",
		notTentacle = "Tentacle warning",
		notTentacle5Sec = "Tentacle 5-sec warning",
		notTentacleBar = "Tentacle timerbar",
		notGiant = "Giant Eye Tentacle warning",
		notGiant5Sec = "Giant Eye Tentacle 5-sec warning",
		notGiant10Sec = "Giant Eye Tentacle 10-sec warning",
		notGiantBar = "Giant Eye Tentacle timerbar",
		notPhase2Start = "Phase 2 start warning",
		notWeakened = "Weakened warning",
		notInvulnerable = "Invulnerable in x-sec warnings",
		notWeakenedBar = "Weakened timberbar",
		notBosskill = "Boss death",
	},

	optionorder = {"notStartWarn", "notGlareWarn", "notGlare5Sec", "notGlareBar", "notPositions", "notPositions5Sec", "notGroupWarning",
		"notTentacle", "notTentacle5Sec", "notTentacleBar",
		"notPhase2Start", "notGiant", "notGiant5Sec", "notGiant10Sec", "notGiantBar", 
		"notWeakened", "notWeakenedBar", "notInvulnerable", "notBosskill"},

	loc 		= GetLocale() == "koKR" and {			
			cthun		= "쑨",
			disabletrigger 	= "쑨|1이;가; 죽었습니다.",
			bosskill 	= "쑨을 물리쳤습니다.",
			
			weakendtrigger 	= "약해졌습니다!",
			
			tentacle1	= "눈달린 촉수 등장 - 촉수 처리~~!",
			tentacle2	= "눈달린 촉수 등장 - 5초전!",
			tentacle3	= "눈달린 촉수 등장 - 10초전!",
			weakend		= "쑨이 약화되었습니다 - 45초간 최대 공격!",
			invulnerable2	= "Party ends in 5 seconds!",
			invulnerable1	= "Party over! C'Thun is now invulnerable!",

			giant3		= "Incoming Giant Eye - 10 sec!",
			giant2		= "Incoming Giant Eye - 5 sec!",
			giant1		= "Incoming Giant Eye - Poke it!",			
		
			combat		= "쑨 시작 - 45초후 암흑의 주시",
		
			phase1		= "쑨의 눈|1이;가; 죽었습니다.",
		
			glare2		= "암흑의 주시 - 5초전!",
			glare1		= "암흑의 주시 - 이동!이동!",
		
			barTentacle	= "눈달린 촉수!",
			barWeakend	= "쑨 약화!",
			barGlare	= "암흑의 주시!",
			barGiant	= "Giant Eye!",

			eyebeam		= "안광",				
			glarewarning	= "암흑의 주시를 당하고 있습니다! 이동!",
			groupwarning	= "암흑의 주시 %s (%s)",			
			positions	= "Assume the position! Green Beam coming!",			
			positions2	= "5 seconds until Dark Glare ends!",
			phase2starting	= "The Eye is dead! Body incoming!",
	} 
		or GetLocale() == "zhCN" and 
	{
			cthun		= "克苏恩",
			disabletrigger 	= "克苏恩死亡了。",
			bosskill 	= "克苏恩被击败了！",
			
			weakendtrigger 	= "被削弱了！",
			
			tentacle1	= "眼球触须出现！",
			tentacle2	= "5秒后眼球触须出现！",
			tentacle3	= "10秒后眼球触须出现！",
			weakend		= "克苏恩被削弱了 - 45秒内全力输出伤害！",

			giant3		= "Incoming Giant Eye - 10 sec!",
			giant2		= "Incoming Giant Eye - 5 sec!",
			giant1		= "Incoming Giant Eye - Poke it!",			
			
			combat		= "克苏恩事件开始 - 45秒后发动黑暗闪耀与眼棱光",
			
			phase1		= "克苏恩之眼死亡了。",
			
			glare2		= "5秒后发动黑暗闪耀！",
			glare1		= "黑暗闪耀发动 - 跑位！",
			
			barTentacle	= "眼球触须！",
			barWeakend	= "克苏恩被削弱了！",
			barGlare	= "黑暗闪耀！",
			barGiant	= "Giant Eye!",
			
			eyebeam		= "眼棱光",
			glarewarning	= "DARK GLARE ON YOU! MOVE!",
			groupwarning	= "Dark Glare on group %s (%s)" ,
			invulnerable2	= "Party ends in 5 seconds!",
			invulnerable1	= "Party over! C'Thun is now invulnerable!",
			positions	= "Assume the position! Green Beam coming!",
			phase2starting	= "The Eye is dead! Body incoming!",
			positions2	= "5 seconds until Dark Glare ends!",
	}
		or 
	{
			cthun		= "C'Thun",
			disabletrigger 	= "C'Thun dies.",
			bosskill 	= "C'Thun has been defeated.",
			
			weakendtrigger 	= "is weakened!",
			
			tentacle1	= "Incoming Tentacle Rape Party - Pleasure!",
			tentacle2	= "Incoming Tentacle Rape Party - 5 sec!",
			tentacle3	= "Incoming Tentacle Rape Party - 10 sec!",
			weakend		= "C'Thun is weakened - DPS Party for 45 sec!",
			invulnerable2	= "Party ends in 5 seconds!",
			invulnerable1	= "Party over! C'Thun is now invulnerable!",

			giant3		= "Incoming Giant Eye - 10 sec!",
			giant2		= "Incoming Giant Eye - 5 sec!",
			giant1		= "Incoming Giant Eye - Poke it!",			
		
			combat		= "C'Thun event started - 45 sec until Dark Glare and Eyes",
		
			phase1		= "Eye of C'Thun dies.",
		
			glare2		= "PEWPEW Dark glare - 5 sec!",
			glare1		= "PEWPEW Dark glare - MOVE IT!",
		
			barTentacle	= "Tentacle rape party!",
			barWeakend	= "C'Thun is weakened!",
			barGlare	= "Dark glare!",
			barGiant	= "Giant Eye!",

			eyebeam		= "Eye Beam",
			glarewarning	= "DARK GLARE ON YOU! MOVE!",
			groupwarning	= "Dark Glare on group %s (%s)",
			positions	= "Assume the position! Green Beam coming!",
			positions2	= "5 seconds until Dark Glare ends!",
			phase2starting	= "The Eye is dead! Body incoming!",
	},

	timeP1Tentacle	 = 45,
	timeP1TentacleStart = 45,
	timeP1GlareStart = 45,
	timeP1Glare	 = 87,
	timeP1GlareDuration = 34,
	
	timeP2Offset    = 12,
	timeP2Tentacle  = 30,

	timeReschedule	= 55,
})

function BigWigsCThun:Initialize()
	self.disabled = true
	self:TriggerEvent("BIGWIGS_REGISTER_MODULE", self)
end

function BigWigsCThun:Enable()
	self.disabled = nil
	self.target = nil
	self.gianteye = nil
	self.cthunstarted = nil
	self:RegisterEvent("CHAT_MSG_MONSTER_EMOTE")
	self:RegisterEvent("CHAT_MSG_COMBAT_HOSTILE_DEATH")
	self:RegisterEvent("CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE")
	self:RegisterEvent("CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE", "CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE")

	self:RegisterEvent("BIGWIGS_SYNC_CTHUNSTART")
	self:RegisterEvent("BIGWIGS_SYNC_CTHUNP2START")
	self:RegisterEvent("BIGWIGS_SYNC_CTHUNWEAKENED")

	self:TriggerEvent("BIGWIGS_SYNC_THROTTLE", "CTHUNSTART", 10)
	self:TriggerEvent("BIGWIGS_SYNC_THROTTLE", "CTHUNP2START", 10)
	self:TriggerEvent("BIGWIGS_SYNC_THROTTLE", "CTHUNWEAKENED", 10)

	metro:Unregister("BigWigs Cthun Tentacles")
	metro:Unregister("BigWigs Cthun Tentacles Reschedule")
	metro:Unregister("BigWigs Cthun Tentacles Phase2")
	metro:Unregister("BigWigs Cthun Dark Glare")
	metro:Unregister("BigWigs Cthun Dark Glare Group Warning")
	metro:Unregister("BigWigs Cthun Target")

	metro:Register("BigWigs Cthun Tentacles", self.TentacleRape, self.timeP1Tentacle, self )
	metro:Register("BigWigs Cthun Tentacles Reschedule", self.StartTentacleRape, self.timeReschedule, self )
	metro:Register("BigWigs Cthun Tentacles Phase2", self.StartTentacleRape, self.timeP2Tentacle + self.timeP2Offset, self )
	metro:Register("BigWigs Cthun Dark Glare", self.DarkGlare, self.timeP1GlareStart, self)

	-- we warn which group will be dark glared 2 second before it hits.
	metro:Register("BigWigs Cthun Group Warning", self.GroupWarning, self.timeP1GlareStart - 2, self)
	metro:Register("BigWigs Cthun Target", self.CheckTarget, 0.2, self)

end

function BigWigsCThun:CheckTarget()
	local i
	local newtarget = nil
	if( UnitName("playertarget") == self.bossname ) then
		newtarget = UnitName("playertargettarget")
	else
		for i = 1, GetNumRaidMembers(), 1 do
			if UnitName("Raid"..i.."target") == self.bossname then
				newtarget = UnitName("Raid"..i.."targettarget")
				break
			end
		end		
	end
	if( newtarget ) then
		self.target = newtarget
	end
end

function BigWigsCThun:GroupWarning()
	if( self.firstWarning ) then
		metro:ChangeRate("BigWigs Cthun Group Warning", self.timeP1Glare )
		self.firstWarning = nil
	end
	if( self.target ) then
		local i, name, group
		for i = 1, GetNumRaidMembers(), 1 do 
			name, _, group, _, _, _, _, _ = GetRaidRosterInfo(i)
			if( name == self.target ) then break end
		end
		if not self:GetOpt("notGroupWarning") then
			self:TriggerEvent("BIGWIGS_MESSAGE", string.format( self.loc.groupwarning, group, self.target), "Red")
			self:TriggerEvent("BIGWIGS_SENDTELL", self.target, self.loc.glarewarning ) 
		end
	end
end

function BigWigsCThun:TentacleRape() 
	local nexttime = self.timeP1Tentacle
	if( self.phase2 ) then
		nexttime = self.timeP2Tentacle
		if( self.gianteye ) then
			self.gianteye = nil
			if not self:GetOpt("notGiant") then self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_START", self.loc.giant1, nexttime, "Red") end
			if not self:GetOpt("notGiant5Sec") then self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_START", self.loc.giant2, nexttime - 5, "Orange") end
			if not self:GetOpt("notGiant10Sec") then self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_START", self.loc.giant3, nexttime - 10, "Yellow") end
			if not self:GetOpt("notGiantBar") then self:TriggerEvent("BIGWIGS_BAR_START", self.loc.barGiant, nexttime, 3, "Orange", "Interface\\Icons\\Ability_EyeOfTheOwl" ) end
		else
			self.gianteye = true
		end
	end
	if not self:GetOpt("notTentacle") then self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_START", self.loc.tentacle1, nexttime, "Red") end
	if not self:GetOpt("notTentacle5Sec") then self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_START", self.loc.tentacle2, nexttime - 5, "Orange") end
	if not self:GetOpt("notTentacleBar") then self:TriggerEvent("BIGWIGS_BAR_START", self.loc.barTentacle, nexttime, 1, "Green", "Interface\\Icons\\Spell_Nature_CallStorm" ) end
end

function BigWigsCThun:DarkGlare()
	if ( self.firstGlare ) then 
		metro:ChangeRate("BigWigs Cthun Dark Glare", self.timeP1Glare )
		self.firstGlare = nil
	end

	if not self:GetOpt("notGlareWarn") then self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_START", self.loc.glare1, self.timeP1Glare, "Red") end
	if not self:GetOpt("notGlare5Sec") then self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_START", self.loc.glare2, self.timeP1Glare-5, "Orange") end
	if not self:GetOpt("notPositions5Sec") then self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_START", self.loc.positions2, self.timeP1Glare + self.timeP1GlareDuration - 5, "Yellow") end
	if not self:GetOpt("notPositions") then self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_START", self.loc.positions, self.timeP1Glare + self.timeP1GlareDuration, "Green") end
	if not self:GetOpt("notGlareBar") then self:TriggerEvent("BIGWIGS_BAR_START", self.loc.barGlare, self.timeP1Glare, 2, "Red", "Interface\\Icons\\Spell_Shadow_ShadowBolt") end
end

function BigWigsCThun:StartTentacleRape()
	self:TentacleRape()
	metro:Start("BigWigs Cthun Tentacles")
end

function BigWigsCThun:CHAT_MSG_MONSTER_EMOTE()
	if( arg1 == self.loc.weakendtrigger ) then
		self:TriggerEvent("BIGWIGS_SYNC_SEND", "CTHUNWEAKENED")
	end
end

function BigWigsCThun:BIGWIGS_SYNC_CTHUNWEAKENED()
	if not self:GetOpt("notWeakened") then self:TriggerEvent("BIGWIGS_MESSAGE", self.loc.weakend, "Green") end
	if not self:GetOpt("notInvulnerable") then
		self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_START", self.loc.invulnerable2, 40, "Orange")
		self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_START", self.loc.invulnerable1, 45, "Red")
	end
	if not self:GetOpt("notWeakenedBar") then self:TriggerEvent("BIGWIGS_BAR_START", self.loc.barWeakend, 45, 4, "Red", "Interface\\Icons\\INV_ValentinesCandy") end

	-- cancel tentacle timers
	self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_CANCEL", self.loc.tentacle1)
	self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_CANCEL", self.loc.tentacle2)
	self:TriggerEvent("BIGWIGS_BAR_CANCEL", self.loc.barTentacle)

	-- cancel giant timers
	self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_CANCEL", self.loc.giant1)
	self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_CANCEL", self.loc.giant2)
	self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_CANCEL", self.loc.giant3)
	self:TriggerEvent("BIGWIGS_BAR_CANCEL", self.loc.barGiant)

	-- stop the timer, and reschedule.
	metro:Stop("BigWigs Cthun Tentacles")
	metro:Start("BigWigs Cthun Tentacles Reschedule", 1)
end

function BigWigsCThun:CHAT_MSG_COMBAT_HOSTILE_DEATH()
		if(arg1 == self.loc.phase1) then
			self:TriggerEvent("BIGWIGS_SYNC_SEND", "CTHUNP2START")
		elseif( arg1 == self.loc.disabletrigger) then
			if not self:GetOpt("notBosskill") then self:TriggerEvent("BIGWIGS_MESSAGE", self.loc.bosskill, "Green", nil, "Victory") end
			self:Disable()
		end
end

function BigWigsCThun:BIGWIGS_SYNC_CTHUNP2START()
	if( not self.phase2 ) then
		self.phase2 = true

		if self:GetOpt("notPhase2Start") then self:TriggerEvent("BIGWIGS_MESSAGE", self.loc.phase2starting, "Green" ) end

		-- cancel tentacle timers
		self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_CANCEL", self.loc.tentacle1)
		self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_CANCEL", self.loc.tentacle2)
		self:TriggerEvent("BIGWIGS_BAR_CANCEL", self.loc.barTentacle)

		-- Cancel Existing Glare Timers
		self:TriggerEvent("BIGWIGS_BAR_CANCEL", self.loc.barGlare)
		self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_CANCEL", self.loc.glare1)
		self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_CANCEL", self.loc.glare2)
		self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_CANCEL", self.loc.positions)
		self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_CANCEL", self.loc.positions2)

		-- change to phase 2 rate
		metro:Stop("BigWigs Cthun Tentacles")
		metro:ChangeRate("BigWigs Cthun Tentacles", self.timeP2Tentacle )
			
		-- schedule first rape into phase 2
		if not self:GetOpt("notTentacle") then self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_START", self.loc.tentacle1, self.timeP2Tentacle + self.timeP2Offset, "Red") end
		if not self:GetOpt("notTentacle5Sec") then self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_START", self.loc.tentacle2, self.timeP2Tentacle + self.timeP2Offset - 5, "Orange") end
		if not self:GetOpt("notTentacleBar") then self:TriggerEvent("BIGWIGS_BAR_START", self.loc.barTentacle, self.timeP2Tentacle + self.timeP2Offset, 1, "Green", "Interface\\Icons\\Spell_Nature_CallStorm") end

		if not self:GetOpt("notGiant") then self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_START", self.loc.giant1, self.timeP2Tentacle + self.timeP2Offset, "Red") end
		if not self:GetOpt("notGiant5Sec") then self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_START", self.loc.giant2, self.timeP2Tentacle + self.timeP2Offset - 5, "Orange") end
		if not self:GetOpt("notGiantBar") then self:TriggerEvent("BIGWIGS_BAR_START", self.loc.barGiant, self.timeP2Tentacle + self.timeP2Offset, 3, "Orange", "Interface\\Icons\\Ability_EyeOfTheOwl" ) end

		-- this metro schedule will restart the tentacle rapes again.
		metro:Start("BigWigs Cthun Tentacles Phase2", 1)
		-- no Dark glaring in phase 2
		metro:Stop("BigWigs Cthun Dark Glare")
		metro:Stop("BigWigs Cthun Group Warning")
		metro:Stop("BigWigs Cthun Target")
	end
end

function BigWigsCThun:CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE()
	if not self.cthunstarted and arg1 and string.find(arg1, self.loc.eyebeam) then
		self:TriggerEvent("BIGWIGS_SYNC_SEND", "CTHUNSTART")
	end
end

function BigWigsCThun:BIGWIGS_SYNC_CTHUNSTART()
	if not self.cthunstarted then
		self.cthunstarted = true
		if not self:GetOpt("notStartWarn") then self:TriggerEvent("BIGWIGS_MESSAGE", self.loc.combat, "Yellow") end
		
		if not self:GetOpt("notTentacleBar") then self:TriggerEvent("BIGWIGS_BAR_START", self.loc.barTentacle, self.timeP1TentacleStart, 1, "Green", "Interface\\Icons\\Spell_Nature_CallStorm") end
		if not self:GetOpt("notGlareBar") then self:TriggerEvent("BIGWIGS_BAR_START", self.loc.barGlare, self.timeP1GlareStart, 2, "Red", "Interface\\Icons\\Spell_Shadow_ShadowBolt") end
		
		if not self:GetOpt("notGlare5Sec") then self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_START", self.loc.glare2, self.timeP1GlareStart - 5, "Orange") end
		if not self:GetOpt("notTentacle5Sec") then self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_START", self.loc.tentacle2, self.timeP1TentacleStart - 5, "Orange") end
		
		if not self:GetOpt("notGlareWarn") then self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_START", self.loc.glare1, self.timeP1GlareStart, "Red") end
		if not self:GetOpt("notTentacle") then self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_START", self.loc.tentacle1, self.timeP1TentacleStart, "Red") end

		if not self:GetOpt("notPositions") then self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_START", self.loc.positions, self.timeP1GlareStart + self.timeP1GlareDuration, "Green") end
		if not self:GetOpt("notPositions5Sec") then self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_START", self.loc.positions2, self.timeP1GlareStart + self.timeP1GlareDuration - 2, "Yellow") end
		
		self:UnregisterEvent("CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE")
		self:UnregisterEvent("CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE")
		
		self.firstGlare = true
		self.firstWarning = true
		-- start our tentacle rape and dark glare schedules
		metro:Start("BigWigs Cthun Tentacles")
		metro:Start("BigWigs Cthun Dark Glare")
		-- start group warning schedules
		metro:Start("BigWigs Cthun Group Warning")
		metro:Start("BigWigs Cthun Target")	
	end
end

function BigWigsCThun:Disable()
	self.disabled = true
	self.phase2 = nil
	self.cthunstarted = nil
	self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_CANCEL", self.loc.tentacle1)
	self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_CANCEL", self.loc.tentacle2)
	self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_CANCEL", self.loc.giant1)
	self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_CANCEL", self.loc.giant2)
	self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_CANCEL", self.loc.giant3)
	self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_CANCEL", self.loc.glare1)
	self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_CANCEL", self.loc.glare2)
	self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_CANCEL", self.loc.positions)
	self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_CANCEL", self.loc.positions2)
	self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_CANCEL", self.loc.invulnerable1)
	self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_CANCEL", self.loc.invulnerable2)
	self:TriggerEvent("BIGWIGS_BAR_CANCEL", self.loc.barGlare)
	self:TriggerEvent("BIGWIGS_BAR_CANCEL", self.loc.barTentacle)
	self:TriggerEvent("BIGWIGS_BAR_CANCEL", self.loc.barGiant)
	self:TriggerEvent("BIGWIGS_BAR_CANCEL", self.loc.barWeakened)
	metro:Unregister("BigWigs Cthun Tentacles")
	metro:Unregister("BigWigs Cthun Tentacles Reschedule")
	metro:Unregister("BigWigs Cthun Tentacles Phase2")
	metro:Unregister("BigWigs Cthun Dark Glare")
	metro:Unregister("BigWigs Cthun Group Warning")
	metro:Unregister("BigWigs Cthun Target")
	
	self:UnregisterAllEvents()
end
--------------------------------
--      Load this bitch!      --
--------------------------------
BigWigsCThun:RegisterForLoad()