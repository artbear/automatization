﻿#Область ПрограммныйИнтерфейс

Процедура ВыполнитьСценарий() Экспорт
	
	РазобратьКонфигурациюНаФайлы(ПутьК1С, КаталогИБ, ПользовательИБ, ПарольИБ, КаталогРазобраннойКонфигурации);
	
КонецПроцедуры

Функция ТипПараметра(ИмяПараметра) Экспорт
	Типы = Перечисления.ТипыПараметров;
	Если ИмяПараметра = "ПутьК1С" Тогда
		Возврат Типы.Файл;
	ИначеЕсли ИмяПараметра = "КаталогИБ" Тогда
		Возврат Типы.Каталог;
	ИначеЕсли ИмяПараметра = "ПользовательИБ" Тогда
		Возврат Типы.Логин;
	ИначеЕсли ИмяПараметра = "ПарольИБ" Тогда
		Возврат Типы.Пароль;
	ИначеЕсли ИмяПараметра = "КаталогРазобраннойКонфигурации" Тогда
		Возврат Типы.Каталог;
	КонецЕсли;
КонецФункции

#КонецОбласти

#Область ОбработчикиСобытий



#КонецОбласти

#Область СлужебныеПроцедурыИФункции

Процедура РазобратьКонфигурациюНаФайлы(ПутьК1С, КаталогИБ, ПользовательИБ, ПарольИБ, КаталогРазобраннойКонфигурации);
	
	УдалитьФайлы(КаталогРазобраннойКонфигурации);
	
	Команда = "%ПутьК1С%   DESIGNER  –force /F %КаталогИБ% /N %ПользовательИБ% /P %ПарольИБ% "
		+ " /DisableStartupDialogs "
		+ " /DumpConfigToFiles  %КаталогРазобраннойКонфигурации%";
		
	Команда = ПакетныйРежим.ОбернутьВКавычкиКоманду(Команда);
	Команда = СтрЗаменить(Команда, "%ПутьК1С%", ПутьК1С);
	
	Команда = СтрЗаменить(Команда, "%КаталогИБ%", КаталогИБ);
	Команда = СтрЗаменить(Команда, "%ПользовательИБ%", ПользовательИБ);
	Команда = СтрЗаменить(Команда, "%ПарольИБ%", ПарольИБ);
	Команда = СтрЗаменить(Команда, "%КаталогРазобраннойКонфигурации%", КаталогРазобраннойКонфигурации);
	
	ПакетныйРежим.ВыполнитьИзКоманднойСтроки(Команда);
		
КонецПроцедуры

#КонецОбласти




