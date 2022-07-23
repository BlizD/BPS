[![Stars](https://img.shields.io/github/stars/BlizD/BPS.svg?label=Github%20%E2%98%85&a)](https://github.com/BlizD/BPS/stargazers)
[![Github All Releases](https://img.shields.io/github/downloads/BlizD/BPS/total.svg)](https://github.com/BlizD/BPS/releases)
[![Release](https://img.shields.io/github/tag/BlizD/BPS.svg?label=Last%20release&a)](https://github.com/BlizD/BPS/releases)
[![Github Releases](https://img.shields.io/github/downloads/BlizD/BPS/latest/total.svg)](https://github.com/BlizD/BPS/releases)
[![Infostart](https://img.shields.io/badge/infostart-downloads%20250-blue.svg)](https://infostart.ru/public/544937/)


## Скачать последний релиз ## 

* https://github.com/BlizD/BPS/releases/download/1.0.0.19/BPS_1.0.0.019.zip - скачать последний релиз;
* https://github.com/BlizD/BPS/releases/ - все релизы.

# Согласование (подсистема) #

Согласование (подсистема). Для любого справочника и документа в 1С. Встраивается в любые конфигурации
Подсистема для согласования в 1С. Для настройки нового согласования не требуется программировать, 
все делается в режиме исполнения. Открытый код. Бизнес-процессы. Документооборот.
Описание смотрим на инфостарт: (http://infostart.ru/public/544937/)
 
Канал в телеграмме: [@mebps](https://t.me/mebps)
Почта проекта: sdesk1c@bk.ru

## Инструкции Wiki ## 

[Инструкции Wiki](https://github.com/BlizD/BPS/wiki)

## Добавить пожелание, ошибку, доработку ## 
* https://github.com/BlizD/BPS/issues - там жмем кнопку **New issue**

## Видео инструкции (очень короткие) ##

* https://www.youtube.com/playlist?list=PLoqXpHnlZWtPmqQpeIOyN-miys0MawG92

## Вариант доработки через CF файл (самое простое) подробнее в задаче [#30](https://github.com/BlizD/BPS/issues/30)

**Алгоритм:**

1. Создайте [задачу](https://github.com/BlizD/BPS/issues) и опишите, Вашу, доработку;
1. Если по задаче необходимы новые метаданные, то необходимо написать ТЗ на это и отправить в задачу ([пример ТЗ](https://github.com/BlizD/Tasks/files/2544687/117_._031118.docx))
1. Возьмите последний CF из дев ветки в задаче [#29](https://github.com/BlizD/BPS/issues/29)
1. Выполните доработку в этом CF;
1. Укажите в задаче список измененных объектов метаданных;
1. Прикрепите к созданной задачи Ваш CF.
1. Спасибо за Ваш, вклад в разработку;

Код необходимо обрамлять в следующем формате: 
```
// + #1014 Иванов А.Б. 2016-04-06
//Старый код
....НовыйКод....
// - #1014 Иванов А.Б. 2016-04-06
```
##  Если вы хотите доработать BPS, добро пожаловать :)

Нужно соблюсти очень простые правила:

1. Поискать задачу в списке задач (issues) проекта https://github.com/BlizD/BPS/issues
1. Если нет уже существующей задачи, создайте новую, в которой опишите новые требования. В этой задаче можно будет обсудить как само требование, так и реализацию.
    1. Возможно, Ваше требование уже реализовано или может быть реализован другим способом, отличным от придуманного Вами.
1. Использовать платформу 8.3.20.1674
1. Сделайте fork проекта с ветки "develope";
    1. Если Вы уже делали fork ранее и хотите получить обновление в свой fork из ветки "develope", тогда необходимо сделать следующее (если используется SourceTree):
    * Меню - Репозитарий - Добавить внешний репозитарий;
    * После этого жмем Получить выбираем внешний репозитарий;
1. Получите свою локальную копию;
1. Выполняете задачу на своей локальной копии;
1. Далее сделайте pull-request в проект. https://github.com/BlizD/BPS/pulls;
    1. ВАЖНО: **выбирайте ветку `features`, а не `master` или `develope`**;
    1. ВАЖНО: **убедитесь, что Ваш fork синхронизирован с оригинальным репозиторием** `develope`