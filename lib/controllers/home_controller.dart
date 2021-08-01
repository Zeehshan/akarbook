import 'package:get/get.dart';

import '../data/repositories/repositories.dart';
import '../models/models.dart';

class HomeController extends GetxController {
  final PropertyRepository _propertyRepository = Get.find();
  int index = 0;
  HomeTabs? hometab;
  List<PropertyModel>? proprtyList;
  bool tab1 = true;
  bool tab2 = false;
  bool tab3 = false;
  int page = 1;
  @override
  void onInit() {
    super.onInit();
    changeStatus(homeTabsList[0]);
  }

  List<HomeTabs> homeTabsList = [
    HomeTabs('للإيجار', true),
    HomeTabs('للبيع', false),
    HomeTabs('للإستثمار', false),
  ];

  changeStatus(HomeTabs homeTabs) async {
    homeTabsList.forEach((element) {
      if (homeTabs.staus == element.staus) {
        element.isSlected = true;
        element.isEnd = false;
        page = 1;
        proprtyList = null;
        update();
      } else {
        element.isSlected = false;
        update();
      }
    });

    List<PropertyModel>? _list = await getProperties(homeTabs.staus);
    if (_list!.isEmpty) {
      proprtyList = [];
      update();
    } else {
      proprtyList = _list;
      update();
    }
  }

  Future<List<PropertyModel>?> getProperties(String? status,{int? page}) async {
    List<PropertyModel>? _list =
        await _propertyRepository.getProperties(propertyStatus: status,page: page ?? 1);
    return _list;
  }
  
  bool isLoadingMore = false;
  loadMoreProperties()async{
    if(isLoadingMore){

    }else{
    page = page + 1;
    isLoadingMore = true;
    update();
     HomeTabs homeTab = homeTabsList.firstWhere((element) => element.isSlected);
     List<PropertyModel>? _list = await getProperties(homeTab.staus,page: page);
     if(_list!.isNotEmpty){
       proprtyList!.addAll(_list);
       isLoadingMore = false;
       update();
     }else{
       int index = homeTabsList.indexOf(homeTab);
       homeTabsList[index].isEnd = true;
       isLoadingMore = false;
       update();
     }
    }
  }
}

class HomeTabs {
  String staus;
  bool isSlected;
  bool isEnd = false;
  HomeTabs(this.staus, this.isSlected);
}
