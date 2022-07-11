// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(WeatherApp());

class WeatherApp extends StatelessWidget {
  @override
  // TODO: implement key

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu_open)),
          backgroundColor: Color.fromARGB(255, 203, 232, 255),
          title: Text(
            'Weather build',
            style: TextStyle(color: Colors.indigo),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings_accessibility_sharp))
          ],
        ),
        body: _buildBodyWeather(),
      ),
    );
  }
}

Widget _buildBodyWeather() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _headImage(),
      ],
    ),
  );
}

Image _headImage() {
  return Image(
    image: NetworkImage('https://r-hockey.ru/assets/no_player_sm.jpg'),
    fit: BoxFit.cover,
  );
}

















































































































/*void main() => runApp(experimentalApp());

// ignore: camel_case_types, use_key_in_widget_constructors
class experimentalApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //метод createState тк нет метода сборки(build)
    return _MyFirstAppState(); //этот метод возвращает нам экземпляр класса State
  }
}

class _MyFirstAppState extends State<experimentalApp> {
  //имя класса начин с _ -идентифиц
  bool _loading = true; //приват знач, а состояние всех виджетов
  double _progressValue = 0; //принято делать приватными
  @override
  void initState() {
    _loading = false;
    _progressValue = 0.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'PoiretOne',
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 213, 203, 231),
        appBar: AppBar(
          title: Text(
            'Интересное приложение',
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Container(
                //padding: EdgeInsets.all(16),
                //width: 400,
                //height: 500,
                alignment: Alignment.center,
                margin: EdgeInsets.all(80),
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 172, 169, 160), border: Border.all()),
                child: _loading
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          LinearProgressIndicator(
                            value: _progressValue,
                            color: Colors.white,
                          ),
                          Text(
                            '${(_progressValue * 100).round()}%',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ],
                      )
                    : Text(
                        'Нажми на кнопку - получишь результат',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
              ),
            )
          ],
          /*child: Stack(
            fit: StackFit.expand,
            children: <Widget> [
              Image(image: AssetImage('Assets/images/015 bg.jpg')),
            Image.asset('Assets/icons/015 icon.png'),
            ],
          ),*/
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() => setState(() {
                //метод setState-вызывает м-д сборки build
                _loading = !_loading; //который перерис все виджеты
                _updateProgress();
              })),
          child: Icon(Icons.cloud_download),
        ),
      ),
    );
  }

  void _updateProgress() {
    const oneSec = const Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue += 0.2;
        if (_progressValue.toStringAsFixed(1) == '1.0') {
          _loading = false;
          t.cancel();
          _progressValue = 0.0;
          return;
        }
      });
    });
  }
}
*/
/*
class experimentalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Интересное приложение'),
          centerTitle: true,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  LinearProgressIndicator(
                    value: 23,
                    color: Colors.white,
                  ),
                  Text(
                    '98 %',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Text(
                    'Нажми на кнопку - получишь результат',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )
                ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.cloud_download),
        ),
      ),
    );
  }
} */

/*runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: CupertinoColors.inactiveGray,
          appBar: AppBar(
            title: Text('Привет, Котлетос!'),
            centerTitle: true,
          ),
          body: Center(
            child: Text(
              'Здесь творится история!',
              style: TextStyle(fontSize: 30, color: Colors.deepPurple),
            ),
          )),
      /*Center(
        child: 
        Text(
          'Приветос, Котлета!',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
            fontWeight: FontWeight.w700,
          ),
          textDirection: TextDirection.ltr,
        ),

      ),
      */
    ),
  ); //метод который выводит что-то на экран*/

/*import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 68;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/
