import 'package:equatable/equatable.dart';

class MatchDuration extends Equatable {
  final dynamic home;
  final dynamic away;

  const MatchDuration({
    required this.away,
    required this.home,
  });

  @override
  List<Object?> get props => [
        home,
        away,
      ];
}
