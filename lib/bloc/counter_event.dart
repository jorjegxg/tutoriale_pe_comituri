part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class AddNumber extends CounterEvent{}

class SubstractNumber extends CounterEvent{}
