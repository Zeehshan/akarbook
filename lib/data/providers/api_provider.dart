import 'package:akarbook/models/property/property_model.dart';

abstract class ApiProvider {
  Future<List<PropertyModel>?> getProperties({
    int limit = 10,
    int page = 0,
    String? propertyStatus,
    String? propertyType,
    String? propertyState,
    String? propertyCity,
    String? startPrice,
    String? endPrice,
    String? agency,
  });
}
