import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          // title: const Text('Flutternya P Luqman'),
          // title: const FlutterLogo(
          //   size: 250,
          //   style: FlutterLogoStyle.horizontal,
          //   textColor: Colors.blue,
          // ),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FlutterLogo(
                size: 48,
                style: FlutterLogoStyle.horizontal,
                textColor: Colors.white,
              ),
              const Text('Subtitle'),
              const Icon(Icons.star),
              Image.asset('assets/images/polinema.png', width: 48, height: 48),
            ],
          ),
        ),
        // body: Row(
        //   //Column
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.stretch,
        //   children: const <Widget>[
        //     Text('You have pushed the button this many times:'),
        //     Text('0', style: TextStyle(fontSize: 24)),
        //   ],
        // ),
        // body: Container(
        //   alignment: Alignment.center,
        //   color: Colors.amber,
        //   height: 200,
        //   child: const Text(
        //     'Hello, World!',
        //     style: TextStyle(fontSize: 24, color: Colors.white),
        //   ),
        // ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              // color: Colors.red,
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red, Colors.blue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Text('Hello'),
            ),
            Container(
              // color: Colors.green,
              width: 100,
              // height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(8),
                color: Colors.green,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Add your button action here
                    },
                    child: const Text('Click Me'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Add your button action here
                    },
                    child: const Text('Click Me'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      // Add your button action here
                    },
                    child: const Text('Click Me'),
                  ),
                  IconButton(
                    onPressed: () {
                      // Add your icon button action here
                    },
                    icon: const Icon(Icons.star),
                  ),
                  FloatingActionButton(onPressed: () {}),
                ],
              ),
              alignment: Alignment.center,
            ),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(leading: Icon(Icons.message), title: Text('Messages')),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
          ],
        ),
      ),
    );
  }
}
