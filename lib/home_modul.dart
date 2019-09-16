import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'increment.dart';
import 'package:provider/provider.dart';


class HomeModul extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          Consumer<Increment>(
            builder: (context,_counter,child)=>Text("${_counter.value}"),

          )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>Provider.of<Increment>(context,listen: false).increment(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
