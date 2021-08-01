import 'package:akarbook/configs/app_environment.dart';

final String apiVersion = "";
final String propertyList = '';
enum ApisRoutes {
  PROPERLIST,
}

apisToUrls(
  ApisRoutes endpoint, {
  int limit = 10,
  int page = 0,
  String? propertyStatus,
  String? propertyType,
  String? propertyState,
  String? propertyCity,
  String? startPrice,
  String? endPrice,
  String? agency,
}) {
  switch (endpoint) {
    case ApisRoutes.PROPERLIST:
      return AppEnvironment.apiBaseUrl +
          'https://akarbook.com/portal/rest_api/get_property.php?limit=$limit&paged=$page&property_status=${propertyStatus ?? ''}&property_type=${propertyType ?? ''}&property_state=${propertyState ?? ''}&property_city=${propertyCity ?? ''}&start_price=${startPrice ?? ''}&end_price=${endPrice ?? ''}';
  }
}
