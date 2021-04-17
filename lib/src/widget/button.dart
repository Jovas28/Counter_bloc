import 'package:counter_bloc/src/bloc/provider.dart';
import 'package:flutter/material.dart';

class ButtonIncrement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    int count = 0;
    return RawMaterialButton(
      elevation: 2,
      fillColor: Theme.of(context).primaryColor,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Text('incrementar contador', style: TextStyle(color: Colors.white),),
      ),
      onPressed: (){
        count++;
        bloc.incrementCount(count);
      },
    );
  }
}