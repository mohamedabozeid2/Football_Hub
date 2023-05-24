import 'package:equatable/equatable.dart';

class Referee extends Equatable {
  final int id;
  final String name;
  final String type;
  final String nationality;

  const Referee({
    required this.name,
    required this.id,
    required this.type,
    required this.nationality,
  });

  @override
  List<Object?> get props => [
        name,
        id,
        type,
        nationality,
      ];
}
