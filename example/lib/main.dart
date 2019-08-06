import 'package:flutter/material.dart';
import 'package:app_installer/app_installer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 80),
              FlatButton.icon(
                onPressed: () {
                  AppInstaller.goStore('com.zero.android', 'com.zero.ios');
                },
                icon: Icon(Icons.store),
                label: Text('Go Store'),
              ),
              SizedBox(height: 40),
              FlatButton.icon(
                onPressed: () {
                  AppInstaller.goStore('com.zero.android', 'com.zero.ios');
                },
                icon: Icon(Icons.rate_review),
                label: Text('Go Store Review'),
              ),
              SizedBox(height: 40),
              FlatButton.icon(
                onPressed: () {
                  AppInstaller.installApk(
                      'com.zero.android.cache/apk/app_2.1.0_32.apk');
                },
                icon: Icon(Icons.arrow_downward),
                label: Text('Install Apk'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
