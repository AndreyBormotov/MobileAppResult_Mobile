#Область ОбработчикиСобытийЭлементовШапкиФормы
&НаКлиенте
Процедура ФотоНажатие(Элемент, СтандартнаяОбработка)

	#Если МобильноеПриложениеКлиент Тогда
		
	СтандартнаяОбработка = Ложь;
		
	Если СредстваМультимедиа.ПоддерживаетсяФотоснимок() Тогда
		НовоеФото = СредстваМультимедиа.СделатьФотоснимок();
		Если НовоеФото = Неопределено Тогда
			Возврат
		КонецЕсли;
		ДвоичныеДанные = НовоеФото.ПолучитьДвоичныеДанные();
		Объект.Фото = ПоместитьВоВременноеХранилище(ДвоичныеДанные, УникальныйИдентификатор);
	КОнецЕсли;
		
	#КонецЕсли

КонецПроцедуры
#КонецОбласти