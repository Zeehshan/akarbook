import 'dart:convert';

import 'package:akarbook/configs/routes/api_routes.dart';
import 'package:akarbook/models/models.dart';
import 'package:http/http.dart' as http;
import 'api_provider.dart';

class HttpApiProvider implements ApiProvider {
  @override
  Future<List<PropertyModel>?> getProperties(
      {int limit = 10,
      int page = 0,
      String? propertyStatus,
      String? propertyType,
      String? propertyState,
      String? propertyCity,
      String? startPrice,
      String? endPrice,
      String? agency}) async{
    
     var response = await http.get(Uri.parse(apisToUrls(ApisRoutes.PROPERLIST,page: page,propertyStatus: propertyStatus)));
     if(response.statusCode == 200){
       print(response.body);
       var decode = jsonDecode(response.body);
       if((decode['data'] as List).isNotEmpty){
         List<PropertyModel> _list = (decode['data'] as List).map((json) => PropertyModel.fromJson(json)).toList();
         return _list;
       }else{
         return [];
       }
     }else{
       return [];
     }
  }
}
