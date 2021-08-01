import 'package:akarbook/models/property/property_model.dart';
import 'package:get/get.dart';

import '../providers/providers.dart';

class PropertyRepository {
  final ApiProvider _apiProvider = Get.find();

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
  }) async{
   return _apiProvider.getProperties(
     limit: limit,
     page: page,
     propertyCity: propertyCity,
     propertyState: propertyState,
     propertyStatus: propertyStatus,
     propertyType: propertyType,
     endPrice: endPrice,
     startPrice: startPrice,
     agency: agency,
   );
  }
}