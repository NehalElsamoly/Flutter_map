import '../../data/model.dart';

abstract class MonthesState {}

class MonthesInitial extends MonthesState {}

class MonthesLoading extends MonthesState {}

class MonthesLoaded extends MonthesState {
  final Monthes monthes;

  MonthesLoaded(this.monthes);
}

class MonthesError extends MonthesState {
  final String message;

  MonthesError(this.message);
}