import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

class App extends StatelessWidget 
{
  const App({Key? key}) : super(key: key);

  @override
  
  Widget build(context) 
  {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stateful Login',
      home: Scaffold(
        body: LoginScreen(),
        ),
    );
  }
}