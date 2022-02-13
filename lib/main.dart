import 'package:drapp/screens/auth_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  /* Our color codes: #0d173c 
  #0cdec8     #b7e1dd.   #f0f5f7 */
  // somthing is off with git

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dr App',
      theme: ThemeData(
        primaryColor: const Color(0xFF0CDEC8),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF0CDEC8),
          secondary: const Color(0xFFB7E1DD),
        )
      ),
      home: const AuthScreen(),
    );
  }
}

/* 
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
        title: const Text('WhatsApp'),
        // leading: IconButton(
        //     onPressed: (){}, 
        //     icon: const Icon(Icons.arrow_back)    
        // ),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.search)
          ),
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.more_vert)
          )
        ],
      ),
      body: Center(
        child: Column(
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
        child: const Icon(Icons.message),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
 */