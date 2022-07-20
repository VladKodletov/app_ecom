// ignore_for_file: file_names, duplicate_ignore
// ignore: file_names
// ignore: file_names
///Flutter - 2 основные вещи
///1 - SDK(Software development Kit) - набор инструментов для компиляции в нативный 
///машинный код под каждую платформу(Android, IOS)
///2 Framework - сам среда разработки и библиотека виджетов, служебные функции
///и пакеты для помощи в разработке
///Виджеты - многоразовые строит блоки UI(пользовательского интерфейса). Примеры
///виджетов:кнопки, вкладки, ввод текста, выпад списки и тд
///
///Архитектура Flutter
///Всё есть виджет! Любая сущность пользовательского интерфейса — виджет. 
///Текстовое поле, отступ или детектор жестов — виджеты.Нет редактора графич, 
///мы строим дерево виджетов посредством кода
///Учитывает различия платформ - мы работаем в одном проекте, но если нужно мы
///можем создавать различные вещи на какой-то конктретной отдельно
///В качестве графического движка под капотом используется Skia
///от 60 до  120 FPS(кадров в секунду) при отрисовке UI
///
///Команда cd в командной строке - переход в указанную папку
///
///При создании переменной которой сразу присваивается знач - var, просто при 
///инициализации - явно указывать тип.
///
///class - позволяет определять схему объекта. У класса должно быть имя и здесь
///именования не LCC, а 1ая буква прописная. Переменная в классе - называют свойством,
///для того чтобы отличать переменную в функции и свойство(перем в классе). Также
///функция которая находится в классе - называется метод.
///
///Scaffold - все что содержит виджеты на странице приложения
///Виджет - особый тип объекта, а для создания экземпляра нам нужны классы 
///
///Конструктор - функция внутри класса, отличающаяся от других функций класса(то
///есть методов) тем, что выполняется только 1 раз когда мы создаем новый объект
///на основе класса
///
///this. - ключевое слово для переменной класса, для возможности ссылаться именно
///на переменную самого класса, а не одноименных переменных функции или конструктора
///в нем
///
///Заключая в {} скобки аргументы конструктора они становятся именованными, а значит
///необязательными. Также можем через равно тут же присвоить значение по умолчанию
///каждому аргументу, используя аннотацию @required же перед типом аргумента 
///конструктора мы делаем этот аргумент обязательным при создании экземпляра класса.
///При создании экземпляра класса на основе этого конструктора
///мы указываем именной параметр, далее :(двоеточие) и присваеваемое значение. Порядок
///при этом не важен, в отличии от простых порядковых аргументов
///также есть сокращенный вариант записи, которым пользуются гораздо чаще - это
///class Person {
///String? name;
///int? age;
///Person({this.name, this.age = 30});
///}
///!эта концепция именованных аргументов доступна и для обычных функций
///
///runApp запрашивает метод сборки виджета build в одном из двух виджетов(Stateless
///и Stateful). Далее метод build нуждается в возврате виджета MaterialApp из
///стандартной библиотеки material.dart чтобы построить весь базовый интерфейс
///
///!Кстати, все виджеты в Dart являются классами
///
///=> - используются в функциях которые имеют ровно 1 выражение и заменяет фигурные
///скобки функции
///
///Scaffold - создает базовый дизайн страницы приложения(структура, цвет фона и тп)
///ctrl+space  - вызываем подсказку для поддерживаемых именованных аргументов 
///функции и виджета
///
///Все виджеты - видимые и невидимые
///
///<String> - аннотация, которая дает понять Dart, какой тип будет использоваться
///в списке.
///