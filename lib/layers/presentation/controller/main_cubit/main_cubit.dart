import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:touchline/layers/presentation/enums/date_of_match.dart';

import 'main_states.dart';

class MainCubit extends Cubit<MainStates> {
  MainCubit() : super(MainInitialState());

  static MainCubit get(context) => BlocProvider.of(context);

  String getDate({
    required DateOfMatch date,
  }) {
    DateFormat formatter = DateFormat('yyyy-MM-dd');
    String formattedDate;
    if (date == DateOfMatch.today) {
      formattedDate = formatter.format(DateTime.now());
    } else if (date == DateOfMatch.yesterday) {
      formattedDate = formatter.format(
        DateTime.now().subtract(const Duration(days: 1)),
      );
    } else {
      formattedDate = formatter.format(
        DateTime.now().add(const Duration(days: 1)),
      );
    }
    return formattedDate;
  }
}
