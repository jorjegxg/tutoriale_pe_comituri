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
            child: const Icon(
              Icons.add,
            ),
            onPressed: () {
              context.read<CounterBloc>().add(
                    AddNumber(),
                  );
            },
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            child: const Icon(
              Icons.remove,
            ),
            onPressed: () {
              context.read<CounterBloc>().add(
                    SubstractNumber(),
                  );
            },
          ),
        ],
      ),
      body: BlocBuilder<CounterBloc, CounterLoaded>(
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
