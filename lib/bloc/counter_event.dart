part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class AddNumber extends CounterEvent {
  final int numberToAdd;

  AddNumber(this.numberToAdd);
}
