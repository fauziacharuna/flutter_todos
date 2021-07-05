import 'package:equatable/equatable.dart';

abstract class TodosEvent extends Equatable {
  const TodosEvent();

  @override
  List<Object> get props => [];
}
class TodoLoadSuccess extends TodosEvent {}
class TodoAdded extends TodosEvent {
  final Todo todo;
  const TodoAdded(this.todo);

  
}