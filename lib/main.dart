import 'package:flutter/material.dart';
import 'screens/supervisee_logs_screen.dart';

void main() {
  runApp(SuperviseeLogsApp());
}

class SuperviseeLogsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/superviseeLogs': (context) => SuperviseeLogsScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/superviseeLogs');
          },
          child: Text('Go to Supervisee Logs'),
        ),
      ),
    );
  }
}
