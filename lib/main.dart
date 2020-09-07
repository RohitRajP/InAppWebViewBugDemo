import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _homeContent(),
    );
  }

  // holds the app home
  Widget _homeContent() {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Flexible(
                flex: 5,
                child: _webViewW(isIncognito: false),
              ),
              Flexible(
                flex: 5,
                child: _webViewW(isIncognito: true),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // holds the inAppWebview
  Widget _webViewW({@required bool isIncognito}) {
    return Container(
      child: InAppWebView(
        initialUrl: "https://medium.com",
        initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(
            incognito: isIncognito,
            userAgent:
                "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36",
          ),
        ),
      ),
    );
  }
}
