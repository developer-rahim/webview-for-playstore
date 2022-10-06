import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' TAMAM SELLER',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Tamam Seller Lap',style: TextStyle(color: Colors.black),),
      //   centerTitle: true,
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      body: SafeArea(
        child: Center(
          child: WebView(
            initialUrl: 'https://tamampk.com/app/seller/login',
            // Enable Javascript on WebView
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ),
      ),
    );
  }
}
