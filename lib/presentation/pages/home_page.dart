import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_lesson/application/controller/count_provider.dart';
import 'package:riverpod_lesson/main.dart';
import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Consumer(
              builder: (context, ref, child){
                return  Text(
                '${ref.watch(counterProvider).count}',

                style: Theme.of(context).textTheme.headlineMedium,
                );
              }

            ),
          ],
        ),
      ),
      floatingActionButton: Consumer(
        builder: (context, ref, child) {
          return   FloatingActionButton(
          onPressed: (){
            ref.read(counterProvider.notifier).increment();
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
          );
        }
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
