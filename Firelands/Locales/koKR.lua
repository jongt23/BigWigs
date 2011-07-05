local L = BigWigs:NewBossLocale("Beth'tilac", "koKR")
if not L then return end
if L then
	L.devastate_message = "그을리는 유린 #%d!"
	L.devastate_bar = "~다음 그을리는 유린"
	L.drone_bar = "다음 수거미"
	L.drone_message = "곧 수거미!"
end

L = BigWigs:NewBossLocale("Lord Rhyolith", "koKR")
if L then
	L.molten_message = "보스 공격 증가 %dx !"
	L.armor_message = "흑요석 갑옷 - %d%%"
	L.armor_gone_message = "갑옷 없어짐!"
	L.phase2_soon_message = "곧 2 단계!"
	L.stomp_message = "진탕 발길! 발구르기! 발구르기!"
	L.big_add_message = "큰 쫄 소환!"
	L.small_adds_message = "곧 작은 쫄 추가!"
end

L = BigWigs:NewBossLocale("Alysrazor", "koKR")
if L then
	L.tornado_trigger = "이 하늘은 나의 것이다!"
	L.claw_message = "타오르는 발톱 x%2$d : %1$s"
	L.fullpower_soon_message = "곧 보스 마력 만땅!"
	L.halfpower_soon_message = "곧 4 단계!"
	L.encounter_restart = "보스 마력 만땅! 다시 단계 반복..."
	L.no_stacks_message = "당신은 깃털이 없습니다. 생각을 가지세요..."
	L.moonkin_message = "깃털을 줍는등의 헛짓은 그만~!"

	L.worm_emote = "녹아내린 알이 부화하려고 합니다!"
	L.phase2_soon_emote = "알리스라조르가 빠른 속도로 원을 그림 날아다닙니다!"
	L.phase2_emote = "99794" -- Fiery Vortex spell ID used in the emote
	L.phase3_emote = "99432" -- Burns Out spell ID used in the emote
	L.phase4_emote = "99922" -- Re-Ignites spell ID used in the emote
	L.restart_emote = "99925" -- Full Power spell ID used in the emote
end

L = BigWigs:NewBossLocale("Shannox", "koKR")
if L then
	L.safe = "%s 안전함"
	L.immolation_trap = "얼굴 강타 : %s!"
	L.crystaltrap = "수정 감옥 덫"
end

L = BigWigs:NewBossLocale("Baleroc", "koKR")
if L then
	L.torment_message = "고통 x%2$d : %1$s"
	L.blade = "~칼날"
end

L = BigWigs:NewBossLocale("Majordomo Staghelm", "koKR")
if L then
	L.seed_explosion = "곧 씨앗 폭발!"
end

L = BigWigs:NewBossLocale("Ragnaros", "koKR")
if L then
	L.seed_explosion = "씨앗 폭발!"
	L.intermission = "라그 휴식"
	L.sons_left = "자손 %d 마리 남음"
	L.engulfing_close = "가까운 지역에 %s"
	L.engulfing_middle = "중간 지역에 %s"
	L.engulfing_far = "먼 지역에 %s"
end

