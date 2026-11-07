import 'package:flutter/material.dart';
import 'package:flutter_application_1/Data/counter.dart';
import 'package:scoped_model/scoped_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScopedModel<CounterModel>(
        model: CounterModel(),
        child: ScopedModelDescendant<CounterModel>(
          builder: (context, child, model) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  //Increment Button
                  ElevatedButton(
                    onPressed: () {
                      model.increment();
                    },
                    child: Text('+'),
                  ),
               
                  Text(model.counter.toString()),

                  //Decrement Button
                  ElevatedButton(
                    onPressed: () {
                      model.decrement();
                    },
                    child: Text('-'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
