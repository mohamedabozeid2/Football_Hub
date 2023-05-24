import 'package:equatable/equatable.dart';

class Competition extends Equatable {
  final int id;
  final String name;
  final String code; //  CL , PD ,CLI
  final String type;
  final String competitionImgURL;

  const Competition({
    required this.name,
    required this.code,
    required this.id,
    required this.competitionImgURL,
    required this.type,
  });

  @override
  List<Object?> get props => [
        name,
        code,
        id,
        competitionImgURL,
        type,
      ];
}
