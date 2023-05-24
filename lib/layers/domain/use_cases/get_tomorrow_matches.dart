import 'package:dartz/dartz.dart';
import 'package:touchline/core/error/failure.dart';
import 'package:touchline/layers/domain/entities/football_match.dart';
import 'package:touchline/layers/domain/repositories/base_matches_repository.dart';

class GetTomorrowMatchesUseCase {
  final BaseMatchesRepository baseMatchesRepository;

  GetTomorrowMatchesUseCase(this.baseMatchesRepository);

  Future<Either<Failure, List<FootballMatch>>> execute() async {
    return await baseMatchesRepository.getTomorrowMatches();
  }
}
