

import 'package:counter_bloc/src/bloc/countStream.dart';
import 'package:flutter/material.dart';

class Provider extends InheritedWidget{

  final CountStream countStream = CountStream();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static CountStream of(BuildContext context) => (context.dependOnInheritedWidgetOfExactType<Provider>()).countStream;
  
  Provider({Key key, Widget child}) : super(key: key, child: child);
}