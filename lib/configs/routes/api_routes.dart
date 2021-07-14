import 'package:akarbook/configs/app_environment.dart';

final String apiVersion = "";

enum ApisRoutes {
  CATEGORIES,
}

apisToUrls(ApisRoutes endpoint) {
  switch (endpoint) {
    case ApisRoutes.CATEGORIES:
      return AppEnvironment.apiBaseUrl +
          apiVersion +
          '';
  }
}
