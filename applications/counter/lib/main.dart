import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        'tip': (context) => new TipRoute(),
      },
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) {
          String routeName = settings.name;
          print("路由名称 $routeName");
        });
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            RaisedButton(
              child: Text('open new route'),
              onPressed: () {
                _navigatorTheOtherRoute(context);
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  void _navigatorTheOtherRoute(BuildContext context) async {
    // var _result = await Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //         builder: (context) {
    //           return new TipRoute();
    //         },
    //         fullscreenDialog: true));
    var _result = await Navigator.pushNamed(
      context,
      'tip',
    );
    print("路由返回值: $_result");
  }
}

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('This is new Router')),
        body: Center(child: Text('Test !')));
  }
}

class TipRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TipRoute'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Text('Please touch the button'),
          RaisedButton(
              child: Text('Touch'),
              onPressed: () {
                Navigator.pop(context, "i");
              })
        ],
      )),
    );
  }
}
