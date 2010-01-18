﻿local L = BigWigs:NewBossLocale("Lord Marrowgar", "ruRU")
if L then
	L.impale_cd = "~Прокалывание"

	L.bonestorm_cd = "~Вихрь костей"
	L.bonestorm_warning = "Вихрь костей через 5 сек!"

	L.coldflame_message = "На ВАС - Холодное пламя!"

	L.engage_trigger = "Плеть накроет этот мир волной смерти и разрушения!"
end

L = BigWigs:NewBossLocale("Icecrown Gunship Battle", "ruRU")
if L then

	L.adds = "Порталы"
	L.adds_desc = "Предупреждает о порталах."
	L.adds_trigger_alliance = "Разрушители, сержанты, в бой!"
	L.adds_trigger_horde = "Пехота, сержанты, в бой!"
	L.adds_message = "Порталы!"
	L.adds_bar = "Следующие Порталы"

	L.mage = "Маг"
	L.mage_desc = "Предупредит когда появится маг и заморозит пушки."
	L.mage_message = "Маг появился!"

	L.enable_trigger_alliance = "Запускайте двигатели! Летим навстречу судьбе!"
	L.enable_trigger_horde = "Воспряньте, сыны и дочери Орды! Сегодня мы будем биться со смертельным врагом! ЛОК'ТАР ОГАР!"

	L.disable_trigger_alliance = "Ну не говорите теперь что я не предупреждал! Летим дальше, братья и сестры!"
	L.disable_trigger_horde = "Альянс повержен. Вперед к Королю-Личу!"
end

L = BigWigs:NewBossLocale("Lady Deathwhisper", "ruRU")
if L then
	L.engage_trigger = "Как вы смеете ступать в эти священные покои? Это место станет вашей могилой!"
	L.phase2_message = "Пропал Барьер маны - 2-ая фаза!"

	L.dnd_message = "На ВАС - Смерть и разложение!"

	L.adds = "Вестники Смерти"
	L.adds_desc = "Таймеры появления Вестников Смерти."
	L.adds_bar = "~новые вестники смерти"
	L.adds_warning = "Новые Вестники Смерти через 5 сек!"

	L.touch_message = "%2$dx Прикосновений у: %1$s"
	L.touch_bar = "~Прикосновение"
end

L = BigWigs:NewBossLocale("Deathbringer Saurfang", "ruRU")
if L then
	L.adds = "Кровавые чудовища"
	L.adds_desc = "Сообщать о призыве кровавых чудовищ"
	L.adds_warning = "Кровавые чудовища через 5 сек!"
	L.adds_message = "Призваны кровавые чудовища"
	L.adds_bar = "~Кровавые чудовища"

	L.rune_bar = "~следующая Руна"

	L.mark = "Метка %d"

	L.engage_trigger = "ВО ИМЯ КОРОЛЯ-ЛИЧА!"
	L.warmup_alliance = "Тогда выдвигаемся! Быст..."
	L.warmup_horde = "Кор'крон, выдвигайтесь! Герои будьте начеку. Плеть только что..."
end

L = BigWigs:NewBossLocale("Festergut", "ruRU")
if L then

	L.engage_trigger = "Повеселимся?"

	L.inhale_message = "Вдыхание гнилостных испарений %d"
	L.inhale_bar = "~Следующее вдыхание %d"

	L.blight_warning = "Едкая гниль через ~5сек!"
	L.blight_bar = "~Следущая Гниль"

	L.bloat_message = "%2$dx Газовое вздутие on %1$s"
	L.bloat_bar = "~Следущее Вздутие"

	L.spore_bar = "~Следующие Газообразные споры"

end

L = BigWigs:NewBossLocale("Rotface", "ruRU")
if L then

	L.engage_trigger = "УУИИИИИИ!"

	L.infection_bar = "Инфекция на |3-5(%s)!"
	L.infection_message = "Инфекция"

	L.ooze = "Сливание слизнюков"
	L.ooze_desc = "Предупреждает когда слизнюки сливаются."
	L.ooze_message = "Нестабильный слизняк %dx"

	L.spray_bar = "Следующие брызги"

end

L = BigWigs:NewBossLocale("Professor Putricide", "ruRU")
if L then
	L.phase = "Фазы"
	L.phase_desc = "Предупреждает о смене фаз."
	L.phase_warning = "Скоро %d-я фаза!"

	L.engage_trigger = "Отличные новости, народ!"

	L.ball_bar = "Следующий бросок вязкой гадости"
	L.ball_say = "Бросок вязкой гадости на МНЕ!"

	L.experiment_message = "Скоро появится слизнюк!"
	L.experiment_bar = "Следующий слизнюк"
	L.blight_message = "Газовое облако"
	L.violation_message = "Зеленый слизнюк"

	L.plague_message = "%2$dx чума на %1$s"
	L.plague_bar = "Следующая чума"

	L.gasbomb_bar = "Следующие желтые газовые бомбы"
	L.gasbomb_message = "Желтые бомбы!"
end

L = BigWigs:NewBossLocale("Blood Princes", "ruRU")
if L then
	L.switch_message = "Vulnerability switch"
end

L = BigWigs:NewBossLocale("Blood-Queen Lana'thel", "ruRU")
if L then

end

L = BigWigs:NewBossLocale("Valithria Dreamwalker", "ruRU")
if L then
	L.manavoid_message = "На ВАС - Магическая воронка!"
	L.portal = "Портал к кошмарам"
	L.portal_desc = "Сообщать когда Валитрия открывает портал."
	L.portal_message = "Портал!"
	L.portal_trigger = "Я открыла портал в Изумрудный Сон. Там в найдете спасение, герои..."
end

L = BigWigs:NewBossLocale("Sindragosa", "ruRU")
if L then
	--L.airphase_trigger = "Your incursion ends here! None shall survive!"
	L.airphase = "Воздушная фаза"
	L.airphase_message = "Воздушная фаза"
	L.airphase_desc = "Сообщать когда Синдрагоса отрывается от земли"
	L.boom = "Взрыв!"
end

L = BigWigs:NewBossLocale("Putricide Dogs", "ruRU")
if L then
	L.wound_message = "%2$dx смертельных ран у: %1$s"
end

