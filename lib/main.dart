import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

void main()=>runApp(MyApp());

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Covid19 Tracker'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: WebView(
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: 'https://news.google.com/covid19/map?hl=en-US&gl=US&ceid=US%3Aen',
          ),
        ),
      ),
    );
  }
}
