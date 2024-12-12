import 'package:equatable/equatable.dart';

class Task extends Equatable{
  final int id;
  final String description;
  final String check;

  const Task({required this.id, required this.description, required this.check});
  
  @override
  List<Object?> get props => [id, description, check];
}
