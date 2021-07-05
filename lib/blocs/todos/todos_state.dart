import 'package:equatable/equatable.dart';
import 'package:flutter_app_todo_bloc/model/todo.dart';

abstract class TodoState extends Equatable {
  const TodoState();

  @override
  List<Object> get props => [];

}
class TodoListInprogress extends TodoState {}
class TodoLoadSuccess extends TodoState {
  final List<Todo> todos;
  const TodoLoadSuccess([this.todos = const[]]);

  @override
  List<Object> get props => [todos];

  @override
  String toString() => 'TodoLoadSuccess { '
      'todos: $todos }';
}
class TodosLoadFailure extends TodoState {}