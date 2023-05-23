import 'package:bloc/bloc.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:touchline/app.dart';

import 'core/utils/constants.dart';
import 'layers/presentation/controller/BlocObserver/BlocObserver.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  directory = await getApplicationDocumentsDirectory();

  Bloc.observer = MyBlocObserver();
    runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => const TouchLine(),
      ),
    );

}
