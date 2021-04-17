import 'package:counter_bloc/src/bloc/provider.dart';
import 'package:counter_bloc/src/pages/homepage.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Counter Bloc',
        initialRoute: '/',
        routes: {
          '/' : (context) => HomePage()
        },
      ),
    );
  }
}