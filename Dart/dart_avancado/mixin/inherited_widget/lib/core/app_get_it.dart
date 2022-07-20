import 'package:get_it/get_it.dart';
import 'package:main/core/app_rooms.dart';

import 'app_model.dart';

final getIt = GetIt.I;

void setupGetIt() {
  getIt.registerSingleton<AppModel>(AppModel());
  getIt.registerSingleton<AppRooms>(AppRooms());
}
