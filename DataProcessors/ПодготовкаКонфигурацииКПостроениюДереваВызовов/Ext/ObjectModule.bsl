﻿
#Область ПрограммныйИнтерфейс

Процедура ЗаполнитьДеревоМетаданных() Экспорт
	
	СтрокаКонфигурация = ДеревоМетаданных.Строки.Добавить();
	СтрокаКонфигурация.Имя = Метаданные.Имя;
	СтрокаКонфигурация.Синоним = Метаданные.Синоним;
	СтрокаКонфигурация.ИндексКартинки = 24;
	
	
	
	СтрокаОбщие = СтрокаКонфигурация.Строки.Добавить();
	СтрокаОбщие.Имя = "Общие";
	СтрокаОбщие.ИндексКартинки = 22;
	
	НоваяСтрока = СтрокаОбщие.Строки.Добавить();
	НоваяСтрока.Имя = "Общие модули";
	НоваяСтрока.ИндексКартинки = 23;
	ДобавитьОбъектыМетаданныхВДеревоПоТипу(НоваяСтрока, Метаданные.ОбщиеМодули, "ОбщийМодуль");
	
	НоваяСтрока = СтрокаОбщие.Строки.Добавить();
	НоваяСтрока.Имя = "Планы обмена";
	НоваяСтрока.ИндексКартинки = 2;
	ДобавитьОбъектыМетаданныхВДеревоПоТипу(НоваяСтрока, Метаданные.ПланыОбмена, "ПланОбмена");
	
	НоваяСтрока = СтрокаОбщие.Строки.Добавить();
	НоваяСтрока.Имя = "Критерии отбора";
	НоваяСтрока.ИндексКартинки = 30;
	ДобавитьОбъектыМетаданныхВДеревоПоТипу(НоваяСтрока, Метаданные.КритерииОтбора, "КритерийОтбора");
	
	НоваяСтрока = СтрокаОбщие.Строки.Добавить();
	НоваяСтрока.Имя = "Хранилища настроек";
	НоваяСтрока.ИндексКартинки = 31;
	ДобавитьОбъектыМетаданныхВДеревоПоТипу(НоваяСтрока, Метаданные.ХранилищаНастроек, "ХранилищеНастроек");
	
	НоваяСтрока = СтрокаОбщие.Строки.Добавить();
	НоваяСтрока.Имя = "Общие формы";
	НоваяСтрока.ИндексКартинки = 25;
	ДобавитьОбъектыМетаданныхВДеревоПоТипу(НоваяСтрока, Метаданные.ОбщиеФормы, "ОбщаяФорма");
	
	НоваяСтрока = СтрокаОбщие.Строки.Добавить();
	НоваяСтрока.Имя = "Общие команды";
	НоваяСтрока.ИндексКартинки = 32;
	ДобавитьОбъектыМетаданныхВДеревоПоТипу(НоваяСтрока, Метаданные.ОбщиеКоманды, "ОбщаяКоманда");
	
	НоваяСтрока = СтрокаОбщие.Строки.Добавить();
	НоваяСтрока.Имя = "Web-сервисы";
	НоваяСтрока.ИндексКартинки = 33;
	ДобавитьОбъектыМетаданныхВДеревоПоТипу(НоваяСтрока, Метаданные.WebСервисы, "WebСервис");
	
	
	
	
	НоваяСтрока = СтрокаКонфигурация.Строки.Добавить();
	НоваяСтрока.Имя = "Константы";
	НоваяСтрока.ИндексКартинки = 29;
	ДобавитьОбъектыМетаданныхВДеревоПоТипу(НоваяСтрока, Метаданные.Константы, "Константа");
	
	НоваяСтрока = СтрокаКонфигурация.Строки.Добавить();
	НоваяСтрока.Имя = "Справочники";
	НоваяСтрока.ИндексКартинки = 1;
	ДобавитьОбъектыМетаданныхВДеревоПоТипу(НоваяСтрока, Метаданные.Справочники, "Справочник");
	
	НоваяСтрока = СтрокаКонфигурация.Строки.Добавить();
	НоваяСтрока.Имя = "Документы";
	НоваяСтрока.ИндексКартинки = 18;
	ДобавитьОбъектыМетаданныхВДеревоПоТипу(НоваяСтрока, Метаданные.Документы, "Документ");
	
	НоваяСтрока = СтрокаКонфигурация.Строки.Добавить();
	НоваяСтрока.Имя = "Журналы документов";
	НоваяСтрока.ИндексКартинки = 13;
	ДобавитьОбъектыМетаданныхВДеревоПоТипу(НоваяСтрока, Метаданные.ЖурналыДокументов, "ЖурналДокументов");
	
	НоваяСтрока = СтрокаКонфигурация.Строки.Добавить();
	НоваяСтрока.Имя = "Перечисления";
	НоваяСтрока.ИндексКартинки = 34;
	ДобавитьОбъектыМетаданныхВДеревоПоТипу(НоваяСтрока, Метаданные.Перечисления, "Перечисление");
	
	НоваяСтрока = СтрокаКонфигурация.Строки.Добавить();
	НоваяСтрока.Имя = "Отчеты";
	НоваяСтрока.ИндексКартинки = 26;
	ДобавитьОбъектыМетаданныхВДеревоПоТипу(НоваяСтрока, Метаданные.Отчеты, "Отчет");
	
	НоваяСтрока = СтрокаКонфигурация.Строки.Добавить();
	НоваяСтрока.Имя = "Обработки";
	НоваяСтрока.ИндексКартинки = 7;
	ДобавитьОбъектыМетаданныхВДеревоПоТипу(НоваяСтрока, Метаданные.Обработки, "Обработка");
	
	НоваяСтрока = СтрокаКонфигурация.Строки.Добавить();
	НоваяСтрока.Имя = "Планы видов характеристик";
	НоваяСтрока.ИндексКартинки = 25;
	ДобавитьОбъектыМетаданныхВДеревоПоТипу(НоваяСтрока, Метаданные.ПланыВидовХарактеристик, "ПланВидовХарактеристик");
	
	НоваяСтрока = СтрокаКонфигурация.Строки.Добавить();
	НоваяСтрока.Имя = "Планы счетов";
	НоваяСтрока.ИндексКартинки = 3;
	ДобавитьОбъектыМетаданныхВДеревоПоТипу(НоваяСтрока, Метаданные.ПланыСчетов, "ПланСчетов");
	
	НоваяСтрока = СтрокаКонфигурация.Строки.Добавить();
	НоваяСтрока.Имя = "Планы видов расчета";
	НоваяСтрока.ИндексКартинки = 14;
	ДобавитьОбъектыМетаданныхВДеревоПоТипу(НоваяСтрока, Метаданные.ПланыВидовРасчета, "ПланВидовРасчета");
	
	НоваяСтрока = СтрокаКонфигурация.Строки.Добавить();
	НоваяСтрока.Имя = "Регистры сведений";
	НоваяСтрока.ИндексКартинки = 27;
	ДобавитьОбъектыМетаданныхВДеревоПоТипу(НоваяСтрока, Метаданные.РегистрыСведений, "РегистрСведений");
	
	НоваяСтрока = СтрокаКонфигурация.Строки.Добавить();
	НоваяСтрока.Имя = "Регистры накопления";
	НоваяСтрока.ИндексКартинки = 28;
	ДобавитьОбъектыМетаданныхВДеревоПоТипу(НоваяСтрока, Метаданные.РегистрыНакопления, "РегистрНакопления");
	
	НоваяСтрока = СтрокаКонфигурация.Строки.Добавить();
	НоваяСтрока.Имя = "Регистры бухгалтерии";
	НоваяСтрока.ИндексКартинки = 3;
	ДобавитьОбъектыМетаданныхВДеревоПоТипу(НоваяСтрока, Метаданные.РегистрыБухгалтерии, "РегистрБухгалтерии");
	
	НоваяСтрока = СтрокаКонфигурация.Строки.Добавить();
	НоваяСтрока.Имя = "Регистры расчета";
	НоваяСтрока.ИндексКартинки = 14;
	ДобавитьОбъектыМетаданныхВДеревоПоТипу(НоваяСтрока, Метаданные.РегистрыРасчета, "РегистрРасчета");
	
	НоваяСтрока = СтрокаКонфигурация.Строки.Добавить();
	НоваяСтрока.Имя = "Бизнес-процессы";
	НоваяСтрока.ИндексКартинки = 7;
	ДобавитьОбъектыМетаданныхВДеревоПоТипу(НоваяСтрока, Метаданные.БизнесПроцессы, "БизнесПроцесс");
	
	НоваяСтрока = СтрокаКонфигурация.Строки.Добавить();
	НоваяСтрока.Имя = "Задачи";
	НоваяСтрока.ИндексКартинки = 18;
	ДобавитьОбъектыМетаданныхВДеревоПоТипу(НоваяСтрока, Метаданные.Задачи, "Задача");
	
КонецПроцедуры

Процедура ПодготовитьРабочиеКаталоги() Экспорт
	
	СлужебныеКонстанты = СлужебныеКонстанты();
	
	МассивКаталогов = Новый Массив;
	МассивКаталогов.Добавить(СлужебныеКонстанты.РабочийКаталог);
	
	МассивКаталогов.Добавить(СлужебныеКонстанты.КаталогРазборки);
	
	УдалитьФайлы(СлужебныеКонстанты.КаталогСборки);
	МассивКаталогов.Добавить(СлужебныеКонстанты.КаталогСборки);
	
	Для Каждого Путь Из МассивКаталогов Цикл
		Если НайтиФайлы(Путь).Количество() = 0 Тогда
			СоздатьКаталог(Путь);
		КонецЕсли;
	КонецЦикла;
	
КонецПроцедуры

Процедура ВыгрузитьФайлыКонфигурации() Экспорт
	
	СлужебныеКонстанты = СлужебныеКонстанты();
	
	Если НайтиФайлы(СлужебныеКонстанты.КаталогРазборки, "*.txt").Количество() Тогда
		Возврат;
	КонецЕсли;
	
	Команда = 
		ПараметрыПодключенияККонфигураторуДляКоманднойСтроки()
		+ " /DumpConfigFiles %КаталогСборки% -Module ";
		
	ОбернутьПараметрыКомандыВКавычки(Команда);
	
	Команда = СтрЗаменить(Команда, "%КаталогСборки%", СлужебныеКонстанты.КаталогРазборки);
	
	ВыполнитьИзКоманднойСтроки(Команда);
	
КонецПроцедуры

Процедура СкопироватьФайлыДляОбработки() Экспорт
	
	СлужебныеКонстанты = СлужебныеКонстанты();
	
	Отбор = Новый Структура("Пометка", Истина);
	НайденныеСтроки = ДеревоМетаданных.Строки.НайтиСтроки(Отбор, Истина);
	
	Для Каждого Строка Из НайденныеСтроки Цикл
		Если ПустаяСтрока(Строка.ПрефиксФайла) Тогда
			Продолжить;
		КонецЕсли;
		
		Маска = Строка.ПрефиксФайла + "." + Строка.Имя + ".*.txt";
		
		НайденныеФайлы = НайтиФайлы(СлужебныеКонстанты.КаталогРазборки, Маска);
		Для Каждого Файл Из НайденныеФайлы Цикл
			ИсходныйФайл = Файл.ПолноеИмя;
			НовыйФайл = СлужебныеКонстанты.КаталогСборки + ПолучитьРазделительПути() + Файл.Имя;
			КопироватьФайл(ИсходныйФайл, НовыйФайл);
		КонецЦикла;
	КонецЦикла;
	
КонецПроцедуры

Процедура ПодставитьМеткиВФайлы() Экспорт
	СлужебныеКонстанты = СлужебныеКонстанты();
	
	НайденныеФайлы = НайтиФайлы(СлужебныеКонстанты.КаталогСборки, "*.txt");
	
	Для Каждого Файл Из НайденныеФайлы Цикл
		ТекстовыйДокумент = Новый ТекстовыйДокумент;
		ТекстовыйДокумент.Прочитать(Файл.ПолноеИмя);
		
		Префикс = Файл.ИмяБезРасширения + ".";
		ДобавитьМеткиВТекстовыйДокумент(ТекстовыйДокумент, Префикс);
		
		ТекстовыйДокумент.Записать(Файл.ПолноеИмя);
	КонецЦикла;
	
КонецПроцедуры

Процедура ЗагрузитьФайлыКонфигурации() Экспорт
	
	СлужебныеКонстанты = СлужебныеКонстанты();
	
	Команда = 
		ПараметрыПодключенияККонфигураторуДляКоманднойСтроки()
		+ " /LoadConfigFiles %КаталогСборки% -Module ";
		
	ОбернутьПараметрыКомандыВКавычки(Команда);
	
	Команда = СтрЗаменить(Команда, "%КаталогСборки%", СлужебныеКонстанты.КаталогСборки);
	
	ВыполнитьИзКоманднойСтроки(Команда);
КонецПроцедуры

Процедура ОтметитьМетаданныеИзЗамера(ОбъектыИзЗамераСтрокой) Экспорт
	
	тСтроки = Новый ТаблицаЗначений;
	тСтроки.Колонки.Добавить("Строка");
	Для сч = 1 По СтрЧислоСтрок(ОбъектыИзЗамераСтрокой) Цикл
		тСтроки.Добавить().Строка = СтрПолучитьСтроку(ОбъектыИзЗамераСтрокой, сч);
	КонецЦикла;
	
	тСтроки.Свернуть("Строка");
	
	Для Каждого Строка Из тСтроки Цикл
		Текст = Строка.Строка;
		Текст = СтрЗаменить(Текст, ".", Символы.ПС);
		
		Отбор = Новый Структура;
		Отбор.Вставить("Имя", СтрПолучитьСтроку(Текст, 2));
		Отбор.Вставить("ПрефиксФайла", СтрПолучитьСтроку(Текст, 1));
		
		НайденныеСтроки = ЭтотОбъект.ДеревоМетаданных.Строки.НайтиСтроки(Отбор, Истина);
		Для Каждого СтрокаДерева Из НайденныеСтроки Цикл
			СтрокаДерева.Пометка = Истина;
			СтрокаДерева.Родитель.Пометка = Истина;
		КонецЦикла;
		
		Если НайденныеСтроки.Количество() = 0 Тогда
			Сообщить("Не удалось отметить: " + Строка.Строка);
		КонецЕсли;
		
	КонецЦикла;
	
КонецПроцедуры


#КонецОбласти

#Область ОбработчикиСобытий



#КонецОбласти

#Область СлужебныеПроцедурыИФункции

	#Область _ // Инициализация
	
Процедура ЗаполнитьПараметрыПоУмолчанию()
	
	ЭтотОбъект.Пользователь = ИмяПользователя();
	ЭтотОбъект.РабочийКаталог = КаталогТекущейИБ();
	
КонецПроцедуры

Функция СлужебныеКонстанты()
	Структура = Новый Структура;
	
	Структура.Вставить("РабочийКаталог", ЭтотОбъект.РабочийКаталог + "\Дерево вызова процедур");
	Структура.Вставить("КаталогРазборки", Структура.РабочийКаталог + "\Исходные файлы");
	Структура.Вставить("КаталогСборки", Структура.РабочийКаталог + "\Обработанные файлы");
	
	Возврат Структура;
	
КонецФункции

Функция КаталогТекущейИБ()
	
	Путь = СтрокаСоединенияИнформационнойБазы();
	Путь = СтрЗаменить(Путь, "File=", "");
	Путь = СтрЗаменить(Путь, """", "");
	Путь = СтрЗаменить(Путь, ";", "");
	
	Возврат Путь;
	
КонецФункции

	#КонецОбласти

	#Область _ // Работа с командной строкой
	
Процедура ВыполнитьИзКоманднойСтроки(Команда)
	
	КодВозврата = Неопределено;
	ЗапуститьПриложение(Команда, КаталогПрограммы(), Истина, КодВозврата);
	Если КодВозврата = Неопределено Тогда
		КодВозврата = "Неопределено";
	КонецЕсли;
	
	Сообщение = "[Код возврата: " + КодВозврата + "] : " + Команда;
	
	Если НЕ КодВозврата = 0 Тогда
		ВызватьИсключение "ОШИБКА: " + Сообщение;
	КонецЕсли;
	
КонецПроцедуры

Функция ПараметрыПодключенияККонфигураторуДляКоманднойСтроки()
	
	Команда = 
		"%ПутьК1С%   DESIGNER "
		+ " /F %КаталогИБ% "
		+ " /N %ПользовательИБ% "
		+ " /P %ПарольИБ% "
		+ " /DisableStartupDialogs ";
		
	ОбернутьПараметрыКомандыВКавычки(Команда);
	
	Команда = СтрЗаменить(Команда, "%ПутьК1С%", КаталогПрограммы() + "1cv8.exe");
	Команда = СтрЗаменить(Команда, "%КаталогИБ%", КаталогТекущейИБ());
	Команда = СтрЗаменить(Команда, "%ПользовательИБ%", ЭтотОбъект.Пользователь);
	Команда = СтрЗаменить(Команда, "%ПарольИБ%", ЭтотОбъект.Пароль);
	
	Возврат Команда;
	
КонецФункции

Процедура ОбернутьПараметрыКомандыВКавычки(вхКоманда)
	Команда = " " + вхКоманда + " ";
	Команда = СтрЗаменить(Команда, " %", " ""%");
	Команда = СтрЗаменить(Команда, "% ", "%"" ");
	
	вхКоманда = СокрЛП(Команда);
КонецПроцедуры

	#КонецОбласти

	#Область _ // Работа с деревом метаданных
	
Процедура ДобавитьОбъектыМетаданныхВДеревоПоТипу(РодительскаяСтрока, КоллекцияМетаданных, ПрефиксФайла)
	
	Для Каждого МетаОбъект Из КоллекцияМетаданных Цикл
		
		НоваяСтрока = РодительскаяСтрока.Строки.Добавить();
		НоваяСтрока.Имя = МетаОбъект.Имя;
		НоваяСтрока.Синоним = МетаОбъект.Синоним;
		НоваяСтрока.ИндексКартинки = РодительскаяСтрока.ИндексКартинки;
		НоваяСтрока.ПрефиксФайла = ПрефиксФайла;
		
	КонецЦикла;
		
		
КонецПроцедуры
	
	#КонецОбласти
	
	#Область _ // Подстановка меток в модули

Процедура ДобавитьМеткиВТекстовыйДокумент(ТекстовыйДокумент, Префикс) Экспорт
	Текст = ТекстовыйДокумент.ПолучитьТекст() + " ";
	Курсор = 0;
	Слово = Неопределено;
	ПредыдущееСлово = "";
	
	Пока СчитатьСледующееСлово(Текст, Курсор, Слово) Цикл
		Если Лев(Слово, 2) = "//" Тогда
			ОбойтиКомментарий(Текст, Курсор);
			Продолжить;
		ИначеЕсли Лев(Слово, 1) = """" Тогда
			ОбойтиСтроковуюКонстанту(Текст, Курсор, Слово);
			Продолжить;
		ИначеЕсли Найти(" "+Символы.Таб+Символы.ПС+Символы.ВК, Слово)>0 Тогда
			Продолжить;
			
		ИначеЕсли нрег(Слово) = "функция" Тогда
			ДобавитьМеткуВНачалоМетода(Текст, Курсор, Префикс);
		ИначеЕсли нрег(Слово) = "процедура" Тогда
			ДобавитьМеткуВНачалоМетода(Текст, Курсор, Префикс);
		ИначеЕсли нрег(Слово) = "конецфункции" Тогда
			ДобавитьМеткуВКонецМетода(Текст, Курсор, Слово);
		ИначеЕсли нрег(Слово) = "конецпроцедуры" Тогда
			ДобавитьМеткуВКонецМетода(Текст, Курсор, Слово);
		ИначеЕсли нрег(Слово) = "возврат" И НЕ ПредыдущееСлово="." Тогда
			ДобавитьМеткуВКонецМетода(Текст, Курсор, Слово);
		ИначеЕсли нрег(Слово) = "вызватьисключение" Тогда
			ДобавитьМеткуВКонецМетода(Текст, Курсор, Слово);
		КонецЕсли;
		
		ПредыдущееСлово = Слово;
	КонецЦикла;
	
	ТекстовыйДокумент.УстановитьТекст(Текст);
КонецПроцедуры
Процедура ОбойтиКомментарий(Текст, Курсор)
	
	Слово = Неопределено;
	Пока СчитатьСледующееСлово(Текст, Курсор, Слово) Цикл
		Если Слово = Символы.ПС Тогда
			Возврат;
		ИначеЕсли Слово = Символы.ВК Тогда
			Возврат;
		КонецЕсли;
	КонецЦикла;
	
КонецПроцедуры
Процедура ОбойтиСтроковуюКонстанту(Текст, Курсор, Слово)
	
	Слово = Неопределено;
	ПредыдущееСлово = Неопределено;
	Пока СчитатьСледующееСлово(Текст, Курсор, Слово) Цикл
		
		Если Слово = " " Тогда
			Продолжить;
		КонецЕсли;
		
		Если Лев(Слово, 2) = "//" И ПредыдущееСлово = Символы.ПС Тогда
			ОбойтиКомментарий(Текст, Курсор);
			Продолжить;
		КонецЕсли;
		
		Если Слово = """" и ПредыдущееСлово = """" Тогда
			Слово = Неопределено;
			ПредыдущееСлово = Неопределено;
		КонецЕсли;
		
		Если ПредыдущееСлово = """" Тогда
			Курсор=Курсор-1;
			Возврат;
		КонецЕсли;
		
		ПредыдущееСлово = Слово;
		
	КонецЦикла;
	
КонецПроцедуры
Процедура ОбойтиТекстДоСлова(Текст, Курсор, СловоВыхода)
	Слово = Неопределено;
	
	Пока СчитатьСледующееСлово(Текст, Курсор, Слово) Цикл
		
		Если Найти(" "+Символы.Таб+Символы.ПС+Символы.ВК, Слово)>0 Тогда
			Продолжить;
		ИначеЕсли Лев(Слово, 2) = "//" Тогда
			ОбойтиКомментарий(Текст, Курсор);
			Продолжить;
		ИначеЕсли Лев(Слово, 1) = """" Тогда
			ОбойтиСтроковуюКонстанту(Текст, Курсор, Слово);
			Продолжить;
		КонецЕсли;
		
		Если Слово = СловоВыхода Тогда
			Возврат;
		КонецЕсли;
		
	КонецЦикла;
КонецПроцедуры


Процедура ДобавитьМеткуВНачалоМетода(Текст, Курсор, Префикс)
	Слово = Неопределено;
	ИмяМетода = Неопределено;
	
	Пока СчитатьСледующееСлово(Текст, Курсор, Слово) Цикл
		
		Если Найти(" "+Символы.Таб+Символы.ПС+Символы.ВК, Слово)>0 Тогда
			Продолжить;
		ИначеЕсли Лев(Слово, 2) = "//" Тогда
			ОбойтиКомментарий(Текст, Курсор);
			Продолжить;
		ИначеЕсли Лев(Слово, 1) = "#" Тогда
			ОбойтиКомментарий(Текст, Курсор);
			Продолжить;
		ИначеЕсли Лев(Слово, 1) = """" Тогда
			ОбойтиСтроковуюКонстанту(Текст, Курсор, Слово);
			Продолжить;
		КонецЕсли;
		
		Если ИмяМетода = Неопределено Тогда
			Если Нрег(Слово) = Врег(Слово) Тогда
				Возврат;
			КонецЕсли;
				
			ИмяМетода = Слово;
		ИначеЕсли Слово = "(" Тогда
			ОбойтиТекстДоСлова(Текст, Курсор, ")");
		ИначеЕсли НРег(Слово) = "экспорт" Тогда
		ИначеЕсли НРег(Слово) = "перем" Тогда
			ОбойтиТекстДоСлова(Текст, Курсор, ";");
		Иначе
			ВставляемаяСтрока = Символы.ПС + "Оповестить(""*"", """+Префикс+ИмяМетода+"()"", Истина);" + Символы.ПС;
			Если НРег(ИмяМетода) = "обработкаоповещения" Тогда
				ВставляемаяСтрока = Символы.ПС+ "Если ИмяСобытия = ""*"" Тогда Возврат КонецЕсли; " +ВставляемаяСтрока;
			КонецЕсли;
			//Курсор = Курсор - СтрДлина(Слово) - 1;
			Курсор = Курсор - СтрДлина(Слово);
			ВставитьСтрокуВТекстИСместитьКурсор(Текст, Курсор, ВставляемаяСтрока);
			Возврат;
		КонецЕсли;
		
	КонецЦикла;
	
КонецПроцедуры
Процедура ДобавитьМеткуВКонецМетода(Текст, Курсор, ТекущееСлово)
	
	ВставляемаяСтрока = Символы.ПС+";Оповестить(""*"", """", Ложь); "+Символы.ПС;
	Курсор = Курсор - СтрДлина(ТекущееСлово) - 1;
	ВставитьСтрокуВТекстИСместитьКурсор(Текст, Курсор, ВставляемаяСтрока);
	
	ОбойтиТекстДоСлова(Текст, Курсор, ТекущееСлово);
	
КонецПроцедуры
Процедура ВставитьСтрокуВТекстИСместитьКурсор(Текст, Курсор, ВставляемаяСтрока)
	Текст = Лев(Текст, Курсор) 
			+ ВставляемаяСтрока
			+ Сред(Текст, Курсор + 1);
	Курсор = Курсор + СтрДлина(ВставляемаяСтрока);
КонецПроцедуры

Функция СчитатьСледующееСлово(ТекстовыйПоток, Курсор, Слово)
	Слово = "";
	ИсходнаяПозиция = Курсор+1;
	Для Курсор = ИсходнаяПозиция По СтрДлина(ТекстовыйПоток) Цикл
		Символ = Сред(ТекстовыйПоток, Курсор, 1);
		
		Если Найти(";()|[]-=+*.,?&№#@!"+""""+Символы.ПС+Символы.ВК+Символы.Таб+" ",Символ)>0 Тогда
			Если Слово = "" Тогда
				Слово = Символ;
				Возврат Истина;
			Иначе
				Курсор=Курсор-1;
				Возврат Истина;
			КонецЕсли;
		КонецЕсли;
		
		Если Символ = "/" Тогда
			Если Слово = "" Тогда
			ИначеЕсли Слово = "/" Тогда
				Слово = "//";
				Возврат Истина;
			Иначе
				Курсор=Курсор-1;
				Возврат Истина;
			КонецЕсли;
		КонецЕсли;
		
		Слово=Слово+Символ;
	КонецЦикла;
	
	Возврат Ложь;
КонецФункции

	#КонецОбласти

#КонецОбласти



ЗаполнитьПараметрыПоУмолчанию();