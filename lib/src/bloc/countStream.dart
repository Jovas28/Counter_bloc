
import 'dart:async';

class CountStream{

  final StreamController<int> _counterStream = StreamController.broadcast();

  Stream<int> get counterstream => _counterStream.stream;

  Function(int) get incrementCount => _counterStream.sink.add;

  void dispose(){
    _counterStream.close();
  }

}