import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterLoaded> {
  CounterBloc() : super(CounterLoaded(0)) {
    on<AddNumber>(_addNumber);
    on<SubstractNumber>(_substractNumber);
  }

  FutureOr<void> _addNumber(AddNumber event, Emitter<CounterLoaded> emit) {
    emit(CounterLoaded(state.numberOnScreen + 1));
  }

  FutureOr<void> _substractNumber(SubstractNumber event, Emitter<CounterLoaded> emit) {
    emit(CounterLoaded(state.numberOnScreen - 1));
  }
}
