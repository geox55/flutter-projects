# Morning timer

This application should help me to get ready in the morning quicker and to make my mornings more organised.
It will help to track time for different activities which I do during my morning routine, like breakfast, dressing up, packing and so on.

Planned features:
- [ ] Screen with several stopwatches to measure the time for every activity
- [ ] Only one stopwatch should be ticking at a time
- [ ] Activities deletion and adding
- [ ] Grouping data by days and activities
- [ ] Showing best, worth and average time for activity
- [ ] Widget in the status bar?

# About me

Hi! I'm Dasha, I've been a frontend/fullstack developer at 7bits for 3 years. I graduated from Omsk State Technical University.

# Development

## How to build

Install deps
~~~shell
flutter pub get
~~~

~~~shell
flutter build apk lib/app/main.dart --dart-define=mode=prod
~~~

Флаги:

* mode: `staging` или `prod` 

Все флаги описаны в файле `app/config`.

## Linting

Запуск линтра и применить исправления `dart fix --apply`

## Рекомендуемые расширения

Описаны в файле `.vscode/extensions.json`.

Одно из расширений помогает сортировать импорты в нужно порядке. Его настройка находится в файле `.vscode/settings.json` по ключу `dartimportsorter.matchingRules`

Нужно заменить в нем `flutter_template` на имя вашего пакета.

## Библиотеки

* Bloc - стейт менеджер
* GoRouter - навигация

## Структура проекта

В проекте используется методология [FSD v2](https://feature-sliced.design/ru/docs/get-started/overview).

Проект состоит из 6 слоев, каждый из которых состоит из слайсов *(user, post, comment)*, которые в свою очередь состоят из сегментов *(ui, model, api и т.д.)*.

1. `shared` — переиспользуемый код, не имеющий отношения к специфике приложения/бизнеса.
2. `entities` — бизнес-сущности
3. `features` — взаимодействия с пользователем, **действия**
4. `widgets` — композиционный слой для соединения сущностей и фич в самостоятельные блоки
5. `pages` — полноценные страницы, состоящие из сущностей, фич и виджетов
6. `app` — настройки, стили и провайдеры для всего приложения.

Подробнее про слои смотрите в документации и в папках слоев. Внутри каждого слоя существуют слайсы, которые группируют логически связанные модули. **Важное замечание: слайсы не могут использовать другие слайсы на том же слое**.
