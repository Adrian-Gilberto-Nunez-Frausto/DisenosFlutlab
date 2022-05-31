import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Stateful Clicker Counter',
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Clicker Counter Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

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
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Align(
            alignment: AlignmentDirectional(-0.05, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(80, 0, 80, 0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      border: Border.all(),
                    ),
                    child: Text(
                      'Adrian Gilberto Nunez Frausto',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Divider(
                  thickness: 5,
                  indent: 100,
                  endIndent: 100,
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Image.network(
                    'https://cdn.fbsbx.com/v/t59.2708-21/274824680_482301150108613_6141010376053587552_n.gif?_nc_cat=102&ccb=1-7&_nc_sid=041f46&_nc_eui2=AeFpg2xJTuwTZWxBWB2HsUVYOWJBy_TsEvk5YkHL9OwS-dhCnCl-_XbOUuPJjCnzoqrl0ymNwS1s0ukStUkSkVTh&_nc_ohc=Y3xZoH8DN9kAX90CNax&_nc_ht=cdn.fbsbx.com&oh=03_AVL7Jt12WhA8Ho-9Mr_XPO_eoisneCo0lJcOf79aiO2mQQ&oe=6297FF87',
                    width: 150,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Divider(
                  thickness: 5,
                  indent: 100,
                  endIndent: 100,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(80, 0, 80, 0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                    child: Text(
                      'Especialidad: Programacion\nGrupo: 6-I',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
