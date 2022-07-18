// ignore_for_file: file_names
///Здесь будут мои подсказки и записи на время разработки приложения

///Обзор папок и файлов во Flutter приложении
///.dart_tool - появилась с Dart версии 2. Используется pub и другими дарт инструментами
///заменяет бывшую папку pub
///.idea - содержит конфигурацию и настройки для idea от Jetbrains. Если использую
///только VSC, то не нужна
///папки android и ios-содержит код и доп файлы, которые позволяет связать флаттер
///приложение и эти платформы
///build - содержит файлы, создаваемые в процессе создания флаттер приложения
///lib - содержит сам код приложения на языке Dart. Здесь и будет основная работа
///при создании приложения на флаттер. В эту же папку будем добавлять все наши 
///файлы Dart
///test - нужна для хранения файлов с тестами
///
///.gitignore - файл нужен для работы с git. Сообщает git какие файлы он должен игнорировать
///Обычно сюда добавляются временные файлы которые не являются полезными для других
///соавторов, таких как продукты компиляции, временные файлы idea
///.metadata - сохраняет некоторую инфо для правильного построения нашего приложения
///Управляется автоматически флаттером
///.packages - содержит список зависимостей, используемых флаттер приложением, он
///генерируется автоматически флаттер сдк и автоматически прописывает некоторые
///зависимости, когда мы выполняем команду packages get. Не должны удалять этот файл
///но и не надо в нем работать
///pubspec.lock - также известный как package lock файл. Цель файла в отслеживании
///точных версий установленных пакетов, что позволяет сделать разрабат продукт
///100% воспроизводимым в его исходном виде, даже в случае эти пакеты обновили
///pubspec.yaml - этот файл позволяет управлять зависимости нашего проекта. Здесь
///мы можем настроить, какие сторонние пакеты мы будем использовать в нашем проекте.
///Какие изображения, шрифты и тд. Можно сказать что это файл конфигурации, который
///позволяет нам настроить работу нашего приложения и добавить сторонние пакеты 
///для упрощения разработки приложения

///Hot reload
///!Горячая перезагрузка обновляет наше приложение только в соответствии с текущим
///состоянием. Для иного нужен hot restart

///Дерево виджетов
///Набор узлов, где каждый узел является виджетом. Все узлы связаны родительски -
///дочерними отношениями
///Главный в иерархии - Material App Widget
///Scaffold - слой представления. Это виджет, который визуально представляет собой
///пользовательский интерфейс, а уже на нем располагаются виджеты элементов и
///оформления:формы, поля, изображения, текст и тд
///
///shift+alt+f - автоматическое форматирование документа
///
///Виджет Material App - отправная точка приложения, реализующая принципы материал дизайн.
///Он соединяет комбинацию виджетов в реальное приложение, которое в дальнейшем
///будет визуализировано, а также отвечает за навигацию в приложении.
///
///Scaffold - виджет, который отвечает за создание базовой структуры и базового
///визуального стиля страницы. Он позволяет реализовывать стандартные виджеты.
///
///Взамен Material App для ios можем использовать виджет Cupertino
///
///Два вида виджетов - видимые (ввода и вывода) и невидимые(компоновки и управления)
///Видимые: FloatingButton(), Text(), Image() и тд
///Невидимые: Row(), Column(), Center()
///виджет Container() - принадлежит к обоим типам, по умолчанию невидим, но если
///применим к нему стиль, то становится видимым
///
///Также есть разделение на два вида виджетов - Stateless Widget & Stateful Widget
///Stateless Widget - не имеет состояния (state), соответственно это сост нельзя менять в runtime
///State(состояние) - любые данные или инфо, необходимые для отрисовки пользовательского
///интерфейся в любой период времени
///Stateful Widget - имеет состояние, значит можно менять его в runtime
///
///!Для построения UI во Flutter используется декларативный подход, где виджеты 
///перерисовываются при необходимости, только когда в них что-то изменилось.
///Пользовательский интерфейс(UI) Наблюдает за состоянием(state) и если мы хотим
///изменить UI нам нужно обновить состояние. Поэтому не работает hot reload, а нужен
///hot restart
///
///Stateless Widget - рекомендуется для неизменяемых виджетов, так как является
///статическим виджетом. Зависят только от конфигурационных параметров и от 
///родительских виджетов. Используется для статичных элементов экрана, которые
///нужно отрисовать 1 раз и больше не трогать:заголовки, метки, иконки, изображение
///из локальных ресурсов и тд
///
///Stateful Widget
///Виджет, который меняет свое состояние и, соответственно, перерисовывается
///несколько раз. Под изменяемым состоянием понимается изменение внутреннего 
///состояния экземпляра класса в зависимости от какого-то события(по нажатию, времени и тп)
///Stateful Widget имеет объект состояния(State Object) - в котором хранится инфо
///о текущем состоянии виджета. Если вы хотите изменить элемент на экране при 
///выполнении какого-то действия - пришел ответ с сервера, пользователь нажал
///на кнопку, ввел данные в форму, изменил громкость.
///Создание Stateful Widget состоит из двух этапов.
///На 1 - придумаем имя для класса и унаследоваться(extends)от Stateful widget
///Далее реализовать и переопределить(@override) метод createState, который вовзращает
///экземпляр класса State
///2 этап - создание самого объекта State, куда в угловые скобки мы передаем наш
///класс унаследованный от StatefulWidget.
///А затем в этом объекте State мы реализовываем метод build, который отрисовывает наш
///пользовательский интерфейс, причем этот build мы можем вызывать множество раз, 
///в отличие от StatelessWidget
///
///Жизненный цикл StatefulsWidget тоже на 2 этапа
///Первым - создается сам виджет и вызывается по умолчанию его constructor, а далее
///происходит вызов метода createState, который порождает объект состояния (State object)
///Второй - в State Object - сначала вызывается коструктор, далее проверка.
///
///Layout Widget - single(child:) & multi(children:)
///
///Container - уже содержит в себе встроенные виджеты Padding &
///Alignment. Также имеет decorated box - для оформления рамок.
///
/// Виджеты ввода
///Виджет Form - контейнер для поля ввода
///
///импорт библиотеки возможен только внутри одной папки?
///
///TextField & TextFormField - похожи на вид, но различия есть - TextField нельзя
///проверить на валидность.
///
///Чтобы получить текст их каждого поля - для каждого нужен контроллер(TextEditionController)
///
///AlertDialog
///Нужен чтобы уведомить пользов о том что он прошел валидацию
///
///Ветка dependencies в pubspec.yaml указывает какие зависимости флаттер будет
///загружать
///!dev_dependencies - используются только для разработки
///
///Http - используют для общения между нашим приложением и апи на неком сер вере
///в большинстве проектов
///
///Наше приложение отправляет запрос на сервер - нужно преобразовать данные Flutter в Json.
///Это преобразование называется сериализация. В обратной последоват - десериализация.
///2 варианта сериализации - ручная и автогенерируемая(с использ сторонних пакетов)
///
///Типы состояний
///2 типа - Ephemeral(локальное) State и Application(глобальное)
///
///При работе с файлами в файловой системе - все методады асинхронные,(видимо чтобы
///не мешать работе основного потока)


///Чистая архитектура (Кокорин)
///Архитектура - методы и шаблоны, которые помогают разработчикам создавать структур
///приложения.
///Архитектура прежде всего о легкости изменения и развертывания.
///Принципы чистой архитектуры от Роберта Мартина
///Независимость от фреймворка - арх не зависит от существ какой-то библиотеки. Это
///позволяет использ фрейм в кач-ве инстр, а не втискивать свою систему в рамки его
///огранич.
///Независимость от UI-пользов интерфейс можно легко изменить, не меняя остальную
///систему. Напр, веб интерф может быть заменен на консольный Без измен бизнес-правил
///Независим от баз данных-мы можем менять Oracle или SQL Server на MongoDB, наши
///бизнес-правила не связаны с бд
///Независим от какого-то внешнего сервиса-по факту наши бизнес правила ничего не знают
///о внешнем мире
///Тестируемость - бизнес-правила могут быть протестир без пользоват интерфейса, бд,
///веб-сервера или другого внешнего компонента.
///
///2 ключевых правила чистой архитектуры
///Правило зависимости(Dependency rule)-зависимость в исходном коде могут указывать
///только вовнутрь круг диаграммы чистой архитектуры. Ничто из внутреннего круга не
///может знать или указывать на внешний круг(касаемо функций, классов, перем).
///Правило абстракции - по мере продвижения внутрь, по слоям, уровень абстракции
///возрастает. Внешний круг - детали реализации, а внутренний - общий, абстрактный
/// 
///Заметки по созданию чистой архитектуры на примере приложения Рик и Морти
///Управление состоянием - реализовано через BLoC
///Usecases - место, где выполняется бизнес логика
///