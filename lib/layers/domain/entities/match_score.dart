import 'package:equatable/equatable.dart';

import 'match_duration.dart';

class Score extends Equatable {
  final dynamic winner;
  final String duration;
  final MatchDuration fullTime;
  final MatchDuration halfTime;

  const Score({
    required this.winner,
    required this.duration,
    required this.fullTime,
    required this.halfTime,
  });

  @override
  List<Object?> get props => [
        winner,
        duration,
        fullTime,
        halfTime,
      ];
}
