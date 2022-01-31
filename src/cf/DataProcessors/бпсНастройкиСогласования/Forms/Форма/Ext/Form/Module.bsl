﻿
&НаСервере
Процедура ЗаполнитьДляРегистраАдресацииНаСервере()
	ОбработкаОбъект = РеквизитФормыВЗначение("Объект"); 
	ОбработкаОбъект.ЗаполнитьТЧРегистрАдресации();
	ЗначениеВРеквизитФормы(ОбработкаОбъект,"Объект");
	УстановитьВидимостьДоступность();
КонецПроцедуры

&НаКлиенте
Процедура КомандаЗаполнитьТЧРегистрАдресации(Команда)
	ЗаполнитьДляРегистраАдресацииНаКлиенте();	
КонецПроцедуры

&НаКлиенте
Процедура ЗаполнитьДляРегистраАдресацииНаКлиенте()
	ЗаполнитьДляРегистраАдресацииНаСервере();
	Если Объект.ПолучитьТолькоТеЗаписиДляКоторыхНеЗаполненыПользователи
		И Объект.ТЧРегистрАдресации.Количество() = 0 Тогда
		Сообщить("Не требуется дозаполнять регистр адресации");
	Конецесли;	
КонецПроцедуры 

&НаСервере
Процедура ЗаполнитьАвтоНаСервере()
	ОбработкаОбъект = РеквизитФормыВЗначение("Объект"); 
	ОбработкаОбъект.ЗаполнитьАвто();
	ЗначениеВРеквизитФормы(ОбработкаОбъект,"Объект");
	УстановитьВидимостьДоступность();	
КонецПроцедуры 

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	Объект.ПолучитьТолькоТеЗаписиДляКоторыхНеЗаполненыПользователи = Истина;
	ЗаполнитьАвтоНаСервере();
КонецПроцедуры

&НаСервере
Процедура УстановитьВидимостьДоступность()
	Элементы.ДекорацияПояснение.Видимость = Ложь;
	Элементы.ДекорацияПояснениеТЧНастройкиПользователей.Видимость = Ложь;
	Элементы.ГруппаСистемнаяУчетнаяЗаписьПользователя.Видимость = Ложь;
	Элементы.ТЧРегистрАдресацииОчередь.Видимость = Ложь;
	Элементы.ПредметСогласования.Видимость = Ложь;
	
	Если Объект.ПолучитьТолькоТеЗаписиДляКоторыхНеЗаполненыПользователи Тогда
		Если Объект.ТЧРегистрАдресации.Количество() > 0	Тогда			
			Элементы.ДекорацияПояснение.Видимость = Истина;
		Конецесли;		
	Иначе
		Элементы.ТЧРегистрАдресацииОчередь.Видимость = Истина;
		Элементы.ПредметСогласования.Видимость = Истина;
	Конецесли;
		
	Если Объект.ТЧНастройкиПользователей.Количество() > 0 Тогда
		Элементы.ДекорацияПояснениеТЧНастройкиПользователей.Видимость = Истина;
	Конецесли;	
	СистемнаяУчетнаяЗаписьЭлектроннойПочты = ПредопределенноеЗначение("Справочник.бпсУчетныеЗаписиЭлектроннойПочты.СистемнаяУчетнаяЗаписьЭлектроннойПочты");
	Если ЗначениеЗаполнено(СистемнаяУчетнаяЗаписьЭлектроннойПочты.АдресЭлектроннойПочты)
		И ЗначениеЗаполнено(СистемнаяУчетнаяЗаписьЭлектроннойПочты.ВремяОжидания) 
		И ЗначениеЗаполнено(СистемнаяУчетнаяЗаписьЭлектроннойПочты.ИмяПользователя) 
		И ЗначениеЗаполнено(СистемнаяУчетнаяЗаписьЭлектроннойПочты.Пароль) 
		И ЗначениеЗаполнено(СистемнаяУчетнаяЗаписьЭлектроннойПочты.ПортСервераИсходящейПочты)
		И ЗначениеЗаполнено(СистемнаяУчетнаяЗаписьЭлектроннойПочты.СерверИсходящейПочты) Тогда
	Иначе
		Элементы.ГруппаСистемнаяУчетнаяЗаписьПользователя.Видимость = Истина;
	Конецесли;
КонецПроцедуры 

&НаСервере
Процедура КомандаСформироватьЗаписиВРегистрАдресацииНаСервере()
	ОбработкаОбъект = РеквизитФормыВЗначение("Объект"); 
	ОбработкаОбъект.СформироватьЗаписиВРегистрАдресации();
КонецПроцедуры


&НаКлиенте
Процедура КомандаСформироватьЗаписиВРегистрАдресации(Команда)
	КомандаСформироватьЗаписиВРегистрАдресацииНаСервере();
КонецПроцедуры

&НаСервере
Процедура КомандаЗаполнитьТЧНастройкиПользователейНаСервере()
	ОбработкаОбъект = РеквизитФормыВЗначение("Объект"); 
	ОбработкаОбъект.ЗаполнитьТЧНастройкиПользователей();
	ЗначениеВРеквизитФормы(ОбработкаОбъект,"Объект");
	УстановитьВидимостьДоступность();
КонецПроцедуры

&НаКлиенте
Процедура КомандаЗаполнитьТЧНастройкиПользователей(Команда)
	КомандаЗаполнитьТЧНастройкиПользователейНаКлиенте();
КонецПроцедуры

&НаКлиенте
Процедура КомандаЗаполнитьТЧНастройкиПользователейНаКлиенте()
	КомандаЗаполнитьТЧНастройкиПользователейНаСервере();
	Если Объект.ТЧНастройкиПользователей.Количество() = 0 Тогда
		Сообщить("Не требуется дозаполнять настройки пользователей");
	Конецесли;	
КонецПроцедуры 

&НаСервере
Процедура КомандаСформироватьЗаписиНастройкиПользователейНаСервере()
	ОбработкаОбъект = РеквизитФормыВЗначение("Объект"); 
	ОбработкаОбъект.СформироватьЗаписиНастройкиПользователей();
КонецПроцедуры

&НаКлиенте
Процедура КомандаСформироватьЗаписиНастройкиПользователей(Команда)
	КомандаСформироватьЗаписиНастройкиПользователейНаСервере();
КонецПроцедуры

&НаКлиенте
Процедура КомандаЗаполнитьУчетнуюЗаписьДляОтправкиУведомлений(Команда)
	СистемнаяУчетнаяЗаписьЭлектроннойПочты = ПредопределенноеЗначение("Справочник.бпсУчетныеЗаписиЭлектроннойПочты.СистемнаяУчетнаяЗаписьЭлектроннойПочты");
	ПараметрыФормы = Новый Структура();
	ПараметрыФормы.Вставить("Ключ",СистемнаяУчетнаяЗаписьЭлектроннойПочты);
	ОткрытьФорму("Справочник.бпсУчетныеЗаписиЭлектроннойПочты.Форма.ФормаЭлемента",ПараметрыФормы);
КонецПроцедуры

&НаКлиенте
Процедура КомандаТЧНастройкиПользователейУстановитьФлажки(Команда)
	УстановитьФлажки(Объект.ТЧНастройкиПользователей,Истина);
КонецПроцедуры

&НаКлиенте
Процедура УстановитьФлажки(ТЧ,Пометка)
	Для каждого СтрокаТЧ из ТЧ цикл
		СтрокаТЧ.Пометка = Пометка;	
	Конеццикла;
КонецПроцедуры 

&НаКлиенте
Процедура КомандаТЧНастройкиПользователейСнятьФлажки(Команда)
	УстановитьФлажки(Объект.ТЧНастройкиПользователей,Ложь);
КонецПроцедуры

&НаКлиенте
Процедура КомандаТЧРегистрАдресацииСнятьФлажки(Команда)
	УстановитьФлажки(Объект.ТЧРегистрАдресации,Ложь);
КонецПроцедуры

&НаКлиенте
Процедура КомандаТЧРегистрАдресацииУстановитьФлажки(Команда)
	УстановитьФлажки(Объект.ТЧРегистрАдресации,Истина);
КонецПроцедуры

&НаКлиенте
Процедура Декорация1ЭтапНажатие(Элемент)
	ОткрытьФорму("Справочник.бпсТипыОбъектовБД.Форма.ФормаСписка");
КонецПроцедуры

&НаКлиенте
Процедура ДекорацияЭтап2Нажатие(Элемент)
	ОткрытьФорму("Справочник.бпсПредметыСогласований.Форма.ФормаСписка");
КонецПроцедуры

&НаКлиенте
Процедура ДекорацияЭтап3Нажатие(Элемент)
	Элементы.ГруппаСтраницы.ТекущаяСтраница = Элементы.ГруппаСтраницаТЧРегистрАдресации;
	ЗаполнитьДляРегистраАдресацииНаКлиенте();
КонецПроцедуры

&НаКлиенте
Процедура ДекорацияЭтап4Нажатие(Элемент)
	Элементы.ГруппаСтраницы.ТекущаяСтраница = Элементы.ГруппаСтраницаТЧНастройкиПользователей;
	КомандаЗаполнитьТЧНастройкиПользователейНаКлиенте();
КонецПроцедуры

&НаКлиенте
Процедура Декорация2Нажатие(Элемент)
	ОткрытьФорму("Справочник.бпсТипыОбъектовБД.Форма.ФормаСписка");
КонецПроцедуры

&НаКлиенте
Процедура Декорация1Нажатие(Элемент)
	ОткрытьФорму("Справочник.бпсПодразделенияАдресации.Форма.ФормаСписка");
КонецПроцедуры

&НаКлиенте
Процедура Декорация3Нажатие(Элемент)
	ОткрытьФорму("Справочник.бпсПредметыСогласований.Форма.ФормаСписка");
КонецПроцедуры

&НаКлиенте
Процедура Декорация5Нажатие(Элемент)
	ОткрытьФорму("Справочник.бпсРолиАдресации.Форма.ФормаСписка");
КонецПроцедуры

&НаКлиенте
Процедура Декорация4Нажатие(Элемент)
	ОткрытьФорму("Справочник.бпсУсловия.Форма.ФормаСписка");
КонецПроцедуры

&НаКлиенте
Процедура Декорация18Нажатие(Элемент)
	ОткрытьФорму("Справочник.бпсАлгоритмыНахожденияСогласователей.Форма.ФормаСписка");
КонецПроцедуры

&НаКлиенте
Процедура Декорация8Нажатие(Элемент)
	ОткрытьФорму("Справочник.бпсУчетныеЗаписиЭлектроннойПочты.Форма.ФормаСписка");
КонецПроцедуры

&НаКлиенте
Процедура Декорация6Нажатие(Элемент)
	ОткрытьФорму("Документ.бпсРегистрацияСтатусаОбъекта.Форма.ФормаСписка");
КонецПроцедуры

&НаКлиенте
Процедура Декорация13Нажатие(Элемент)
	ОткрытьФорму("РегистрСведений.бпсНастройкиПользователей.ФормаСписка");
КонецПроцедуры

&НаКлиенте
Процедура Декорация10Нажатие(Элемент)
	ОткрытьФорму("РегистрСведений.бпсРегистрАдресации.ФормаСписка");
КонецПроцедуры

&НаКлиенте
Процедура Декорация12Нажатие(Элемент)
	ОткрытьФорму("РегистрСведений.бпсЗаблокированныеОбъекты.ФормаСписка");
КонецПроцедуры

&НаКлиенте
Процедура Декорация11Нажатие(Элемент)
	ОткрытьФорму("РегистрСведений.бпсСтатусыОбъектов.ФормаСписка");
КонецПроцедуры

&НаКлиенте
Процедура Декорация14Нажатие(Элемент)
	ОткрытьФорму("РегистрСведений.бпсОшибки.ФормаСписка");
КонецПроцедуры

&НаКлиенте
Процедура Декорация9Нажатие(Элемент)
	ОткрытьФорму("Обработка.бпсСтатусыСогласований.Форма.Форма");
КонецПроцедуры

&НаКлиенте
Процедура Декорация7Нажатие(Элемент)
	ОткрытьФорму("БизнесПроцесс.бпсСогласование.ФормаСписка");
КонецПроцедуры

&НаКлиенте
Процедура Декорация15Нажатие(Элемент)
	ОткрытьФорму("РегистрСведений.бпсСообщения.ФормаСписка");
КонецПроцедуры

&НаСервере
Процедура ЗаполнитьТЧРегистрАдресацииПоПредметуСогласованияНаСервере()
	ОбработкаОбъект = РеквизитФормыВЗначение("Объект"); 
	ОбработкаОбъект.ЗаполнитьТЧРегистрАдресацииПоПредметуСогласования();
	ЗначениеВРеквизитФормы(ОбработкаОбъект,"Объект");
	УстановитьВидимостьДоступность();	
КонецПроцедуры 

&НаКлиенте
Процедура ПредметСогласованияПриИзменении(Элемент)
	Объект.ТЧРегистрАдресации.Очистить();
	Объект.ПолучитьТолькоТеЗаписиДляКоторыхНеЗаполненыПользователи = Ложь;
	УстановитьВидимостьДоступность();
КонецПроцедуры

&НаКлиенте
Процедура ПолучитьТолькоТеЗаписиДляКоторыхНеЗаполненыПользователиПриИзменении(Элемент)
	Объект.ТЧРегистрАдресации.Очистить();
	УстановитьВидимостьДоступность();
КонецПроцедуры

&НаКлиенте
Процедура ТЧРегистрАдресацииПриОкончанииРедактирования(Элемент, НоваяСтрока, ОтменаРедактирования)
	СтрокаТЧРегистрАдресации = Элементы.ТЧРегистрАдресации.ТекущиеДанные;	
	Если СтрокаТЧРегистрАдресации <> Неопределено тогда
		СтрокаТЧРегистрАдресации.Пометка = Истина;	
	Конецесли;	
	
КонецПроцедуры

&НаКлиенте
Процедура Декорация16Нажатие(Элемент)
	ОткрытьФорму("Справочник.бпсКонстанты.ФормаСписка");
КонецПроцедуры

&НаКлиенте
Процедура Декорация17Нажатие(Элемент)
	ОткрытьФорму("РегистрСведений.бпсПроксиСерверы.ФормаСписка");
КонецПроцедуры
