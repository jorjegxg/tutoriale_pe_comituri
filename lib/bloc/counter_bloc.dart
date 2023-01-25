import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<AddNumber>(_addNumber);
  }

  FutureOr<void> _addNumber(AddNumber event, Emitter<CounterState> emit) {
    emit(CounterState(state.numberOnScreen + event.numberToAdd));
  }
}
