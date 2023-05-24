import 'package:equatable/equatable.dart';

class Team extends Equatable {
  final int id;
  final String name;
  final String shortName;
  final String tla;
  final String flagURL;

  const Team({
    required this.id,
    required this.name,
    required this.flagURL,
    required this.shortName,
    required this.tla,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        flagURL,
        shortName,
        tla,
      ];
}
