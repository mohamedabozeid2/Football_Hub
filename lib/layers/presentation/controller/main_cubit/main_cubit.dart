import 'package:flutter_bloc/flutter_bloc.dart';

import 'main_states.dart';

class MainCubit extends Cubit<MainStates>{
  MainCubit() : super(MainInitialState());


  static MainCubit get(context) =>BlocProvider.of(context);

}