﻿
Перем мПринятыеРешенияПоФайлам_кэш; // массив

Процедура СверкаФайловСборки() Экспорт
	
	тчСверка = Сверка;
	тчСверка.Очистить();
	
	ПрочитатьФайлПринятыхРешений();
	
	Состояние("Считываем файлы исходной версии");
	ПрочитатьФайлыВТаблицу(тчСверка, "ВерсияИсходная");
	Состояние("Считываем файлы доработанной версии");
	ПрочитатьФайлыВТаблицу(тчСверка, "ВерсияДоработанная");
	Состояние("Считываем файлы объединенной версии");
	ПрочитатьФайлыВТаблицу(тчСверка, "ВерсияОбъединенная");
	
	Состояние("Сопоставляем наличие файлов");
	тчСверка.Свернуть("Файл","ВерсияИсходная,ВерсияДоработанная,ВерсияОбъединенная");
	
	ЗаполнитьВерсииТипыРасхожденияНеобходимостьПринятияРешений(тчСверка);
	
	Состояние("Удаляем лишние строки");
	УдалитьСтрокиНеТребующиеАнализа(тчСверка);
	
КонецПроцедуры

Процедура ПрочитатьФайлПринятыхРешений()
	
	мПринятыеРешенияПоФайлам_кэш = Новый Массив;
	Текст = МаскиФайловИсключений;
	
	Для сч = 1 по СтрЧислоСтрок(Текст) Цикл
		Значение = СтрПолучитьСтроку(Текст, сч);
		Значение = СокрЛП(Значение);
		Если ПустаяСтрока(Значение) Тогда
			Продолжить;
		КонецЕсли;
		
		Значение = НРег(Значение);
		мПринятыеРешенияПоФайлам_кэш.Добавить(Значение);
	КонецЦикла;
	
КонецПроцедуры

Процедура ПрочитатьФайлыВТаблицу(ТаблицаФайлов, КолонкаОтметки)
	Если КолонкаОтметки = "ВерсияИсходная" Тогда
		КаталогФайлов = КаталогИсходнойСборки;
	ИначеЕсли КолонкаОтметки = "ВерсияДоработанная" Тогда
		КаталогФайлов = КаталогДоработаннойСборки;
	ИначеЕсли КолонкаОтметки = "ВерсияОбъединенная" Тогда
		КаталогФайлов = КаталогОбъединеннойСборки;
	КонецЕсли;
	
	МассивМасокИсключений = ПолучитьМассивМасокИзСтроки(МаскиФайловИсключений);
	МассивФайловИсключений = Новый Массив;
	Для каждого Маска из МассивМасокИсключений Цикл
		НайденныеФайлы = НайтиФайлы(КаталогФайлов, Маска);
		Для каждого Файл из НайденныеФайлы Цикл
			МассивФайловИсключений.Добавить(Файл.Имя);
		КонецЦикла;
	КонецЦикла;
	
	МассивМасок = ПолучитьМассивМасокИзСтроки(МаскиСверяемыхФайлов);
	Если МассивМасок.Количество() = 0 Тогда
		МассивМасок.Добавить("*.*");
	КонецЕсли;
	
	Для каждого Маска из МассивМасок Цикл
		НайденныеФайлы = НайтиФайлы(КаталогФайлов, Маска);
		Для каждого Файл из НайденныеФайлы Цикл
			Если НЕ МассивФайловИсключений.Найти(Файл.Имя) = Неопределено Тогда
				Продолжить;
			КонецЕсли;
			
			НоваяСтрока = ТаблицаФайлов.Добавить();
			НоваяСтрока.Файл = Файл.Имя;
			НоваяСтрока[КолонкаОтметки] = -1;
		КонецЦикла;
	КонецЦикла;
	
КонецПроцедуры
Функция ПолучитьМассивМасокИзСтроки(СтрокаМасок)
	
	МассивМасок = Новый Массив;
	Для сч = 1 по СтрЧислоСтрок(СтрокаМасок) Цикл
		Маска = СтрПолучитьСтроку(СтрокаМасок, сч);
		Маска = СокрЛП(Маска);
		Если ПустаяСтрока(Маска) Тогда
			Продолжить;
		КонецЕсли;
		МассивМасок.Добавить(Маска);
	КонецЦикла;
	Возврат МассивМасок;
	
КонецФункции

Функция ПолучитьТекстФайла(ПутьКФайлу)
	ТекстовыйДокумент = Новый ТекстовыйДокумент;
	ТекстовыйДокумент.Прочитать(ПутьКФайлу);
	
	Возврат ТекстовыйДокумент.ПолучитьТекст();
	
КонецФункции

Функция НеобходимостьПроверкиПоСтроке(СтрокаСверки)
	
	Если СтрокаСверки.ВерсияОбъединенная = СтрокаСверки.ВерсияДоработанная Тогда
		Возврат Ложь;
	КонецЕсли;
	
	Возврат мПринятыеРешенияПоФайлам_кэш.Найти(НРег(СтрокаСверки.Файл)) = Неопределено;
	
КонецФункции

Процедура ЗаполнитьВерсииТипыРасхожденияНеобходимостьПринятияРешений(тчСверка)
	Для каждого Строка из тчСверка Цикл
		ОбработкаПрерыванияПользователя();
		Если Строка.НомерСтроки%100 = 0 Тогда
			Состояние("Заполняем типы расхождений " + Строка.НомерСтроки + " из " + тчСверка.Количество());
		КонецЕсли;
		
		Если НЕ Строка.ВерсияИсходная = 0 Тогда
			ТекстИсходный = ПолучитьТекстФайла(КаталогИсходнойСборки + Строка.Файл);
			Строка.ВерсияИсходная = 1;
		КонецЕсли;
		
		Если НЕ Строка.ВерсияДоработанная = 0 Тогда
			ТекстДоработанный = ПолучитьТекстФайла(КаталогДоработаннойСборки + Строка.Файл);
			Если ТекстДоработанный = ТекстИсходный Тогда
				Строка.ВерсияДоработанная = 1;
			Иначе
				Строка.ВерсияДоработанная = 2;
			КонецЕсли;
		КонецЕсли;
		
		Если НЕ Строка.ВерсияОбъединенная = 0 Тогда
			ТекстОбъединенный = ПолучитьТекстФайла(КаталогОбъединеннойСборки + Строка.Файл);
			Если ТекстОбъединенный = ТекстИсходный Тогда
				Строка.ВерсияОбъединенная = 1;
			ИначеЕсли ТекстОбъединенный = ТекстДоработанный Тогда
				Строка.ВерсияОбъединенная = 2;
			Иначе
				Строка.ВерсияОбъединенная = 3;
			КонецЕсли;
		КонецЕсли;
		
		Строка.ТипРасхождения = ""
						+Число(Строка.ВерсияИсходная) 
						+ Число(Строка.ВерсияДоработанная) 
						+ Число(Строка.ВерсияОбъединенная);
		
		Строка.ТребуетсяПринятьРешение = НеобходимостьПроверкиПоСтроке(Строка);
	КонецЦикла;
КонецПроцедуры

Процедура УдалитьСтрокиНеТребующиеАнализа(тчСверка)
	
	Для каждого Строка из ТипыРасхождений Цикл
		Если Строка.Пометка Тогда
			Продолжить;
		КонецЕсли;
		
		Отбор = Новый Структура("ТипРасхождения",Строка.ТипРасхождения);
		НайденныеСтроки = тчСверка.НайтиСтроки(Отбор);
		Для каждого Строка из НайденныеСтроки Цикл
			тчСверка.Удалить(Строка);
		КонецЦикла;
		
	КонецЦикла;
	
КонецПроцедуры

Процедура ЗаполнитьТипыРасхождений() Экспорт
	
	Запрос = Новый Запрос(
	"ВЫБРАТЬ
	|	""0"" КАК Версия
	|ПОМЕСТИТЬ втИсходная
	|
	|ОБЪЕДИНИТЬ ВСЕ
	|
	|ВЫБРАТЬ
	|	""1""
	|;
	|
	|////////////////////////////////////////////////////////////////////////////////
	|ВЫБРАТЬ
	|	т.Версия
	|ПОМЕСТИТЬ втДоработанная
	|ИЗ
	|	втИсходная КАК т
	|
	|ОБЪЕДИНИТЬ ВСЕ
	|
	|ВЫБРАТЬ
	|	""2""
	|;
	|
	|////////////////////////////////////////////////////////////////////////////////
	|ВЫБРАТЬ
	|	т.Версия
	|ПОМЕСТИТЬ втОбъединенная
	|ИЗ
	|	втДоработанная КАК т
	|
	|ОБЪЕДИНИТЬ ВСЕ
	|
	|ВЫБРАТЬ
	|	""3""
	|;
	|
	|////////////////////////////////////////////////////////////////////////////////
	|ВЫБРАТЬ
	|	Исх.Версия + Д.Версия + О.Версия КАК ТипРасхождения
	|ИЗ
	|	втИсходная КАК Исх,
	|	втДоработанная КАК Д,
	|	втОбъединенная КАК О");
	
	ТипыРасхождений.Загрузить(Запрос.Выполнить().Выгрузить());
	
	
КонецПроцедуры

