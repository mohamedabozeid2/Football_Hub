import 'package:equatable/equatable.dart';

class Season extends Equatable {
  final int id;
  final String startDate;
  final String endDate;
  final int currentMatchDay;
  final dynamic winner;

  const Season({
    required this.id,
    required this.currentMatchDay,
    required this.endDate,
    required this.startDate,
    required this.winner,
  });

  @override
  List<Object?> get props => [
        id,
        currentMatchDay,
        endDate,
        startDate,
        winner,
      ];
}
