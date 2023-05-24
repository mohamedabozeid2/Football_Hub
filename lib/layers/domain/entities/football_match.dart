import 'package:equatable/equatable.dart';
import 'package:touchline/layers/domain/entities/referee.dart';

import 'match_score.dart';
import 'match_area.dart';
import 'competition.dart';
import 'competition_season.dart';
import 'football_team.dart';

class FootballMatch extends Equatable {
  final Area area;
  final Competition competition;
  final Season season;
  final int id;
  final String utcDate;
  final String status;
  final int matchDay;
  final String stage;
  final dynamic group;
  final String lastUpdated;
  final Team homeTeam;
  final Team awayTeam;
  final Score score;
  final List<Referee> referees;

  const FootballMatch({
    required this.competition,
    required this.area,
    required this.awayTeam,
    required this.group,
    required this.homeTeam,
    required this.id,
    required this.lastUpdated,
    required this.matchDay,
    required this.referees,
    required this.score,
    required this.season,
    required this.stage,
    required this.status,
    required this.utcDate,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        competition,
        area,
        awayTeam,
        group,
        homeTeam,
        id,
        lastUpdated,
        matchDay,
        referees,
        score,
        season,
        stage,
        status,
        utcDate,
      ];
}
