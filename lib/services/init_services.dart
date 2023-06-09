import 'package:get_it/get_it.dart';

import '../controllers/mixin.dart';
import '../navigation/route_generator.dart';
import 'media_query.dart';

final locator = GetIt.instance;

class Services with ControllersMixin {
  static Future<void> initializeServices() async {
    // Init Services 1 - Create Singletons for services
    locator.registerSingleton(RouteGenerator());
    locator.registerSingleton(ResponsiveDesign());

    // Init Services 2 - Initiate Basic Services to assign the state of Application
  }
}
