import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorial2/bloc/counter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Titlu pagina'),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: const Text('1'),
            onPressed: () {
              context.read<CounterBloc>().add(
                    AddNumber(100),
                  );
            },
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            child: const Text('-10'),
            onPressed: () {
              context.read<CounterBloc>().add(
                    AddNumber(-10),
                  );
            },
          ),
        ],
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Center(
            child: Text(
              state.numberOnScreen.toString(),
              style: Theme.of(context).textTheme.headline2,
            ),
          );
        },
      ),
    );
  }
}
