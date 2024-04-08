import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/counter_cubit_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title, required this.color});

  final String title;
  final Color color;

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: widget.color,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('You have pushed the button this many times:'),
          BlocConsumer<CounterCubit, CounterState>(
            listener: (context, state) {
              if (state.wasIncremented == true) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Incremented!'),
                  ),
                );
              }
            },
            builder: (context, state) {
              return Text(
                state.counterValue.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                backgroundColor: widget.color,
                heroTag: Text(widget.title),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).decrement();
                  // context.bloc<CounterCubit>().decrement();
                },
                tooltip: 'Decrement',
                child: Icon(Icons.remove),
              ),
              FloatingActionButton(
                backgroundColor: widget.color,
                heroTag: Text(widget.title),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).increment();
                  // context.bloc<CounterCubit>().decrement();
                },
                tooltip: 'Increment',
                child: Icon(Icons.add),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/second');
            },
            color: Colors.green,
            child: Text(
              'Go to Second Screen',
            ),
          ),
          SizedBox(
            height: 24,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/third');
            },
            color: widget.color,
            child: Text(
              'Go to Third Screen',
            ),
          ),
        ],
      )),
    );
  }
}
