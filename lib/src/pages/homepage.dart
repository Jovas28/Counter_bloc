import 'package:counter_bloc/src/bloc/provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final bloc = Provider.of(context);
    int count = 0;

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Bloc'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          count++;
          bloc.incrementCount(count);
        },
      ),
      body: Center(
        child: StreamBuilder(
          stream: bloc.counterstream ,
          builder: (BuildContext context, AsyncSnapshot<int> snapshot){
            return Text('Counter: ${snapshot.data ?? 0}', style: TextStyle(fontSize: 20),);
          },
        ),
      ),
    );
  }
}