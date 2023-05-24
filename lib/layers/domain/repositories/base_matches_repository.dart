import 'package:touchline/core/error/failure.dart';
import 'package:dartz/dartz.dart';

import '../entities/football_match.dart';

abstract class BaseMatchesRepository {
  Future<Either<Failure, List<FootballMatch>>> getTodayMatches();

  Future<Either<Failure, List<FootballMatch>>> getLiveMatches();

  Future<Either<Failure, List<FootballMatch>>> getYesterdayMatches();

  Future<Either<Failure, List<FootballMatch>>> getTomorrowMatches();

  Future<Either<Failure, List<FootballMatch>>> getUpComingMatchesForTeam({
    required int teamId,
  });

  Future<Either<Failure, List<FootballMatch>>> getMatchesForSpecificPlayer({
    required int playerId,
  });
}
