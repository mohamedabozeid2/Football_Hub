import 'package:dartz/dartz.dart';
import 'package:touchline/core/error/failure.dart';
import 'package:touchline/layers/domain/entities/football_match.dart';
import 'package:touchline/layers/domain/repositories/base_matches_repository.dart';

class GetUpComingMatchesForTeamUseCase {
  final BaseMatchesRepository baseMatchesRepository;

  GetUpComingMatchesForTeamUseCase(this.baseMatchesRepository);

  Future<Either<Failure, List<FootballMatch>>> execute({
    required int teamId,
  }) async {
    return await baseMatchesRepository.getUpComingMatchesForTeam(
        teamId: teamId);
  }
}
