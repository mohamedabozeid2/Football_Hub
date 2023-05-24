import 'package:equatable/equatable.dart';

class Area extends Equatable {
  final int id;
  final String name;
  final String code; // ESP , SAM ,...
  final String flagURL;

  const Area({
    required this.id,
    required this.code,
    required this.flagURL,
    required this.name,
  });

  @override
  List<Object?> get props => [
        id,
        code,
        flagURL,
        name,
      ];
}
