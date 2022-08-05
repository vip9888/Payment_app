import 'package:flutter_payment_app/model/data_model.dart';
import 'package:get/get.dart';

import '../services/data_services.dart';

class DataController extends GetxController {
  RxList<DataModel> list = <DataModel>[].obs;
  final services = new DataServices();
  var _loading = false.obs;

  // get loading {
  //   return _loading.value;
  // }
  // or

  get loading => _loading.value;

  @override
  void onInit() {
    _loadData();
    super.onInit();
  }

  get newList {
    return list
        .where((e) => e.status == 0 ? false : true)
        .map((e) => e)
        .toList();
  }

  _loadData() async {
    _loading.value = false;
    try {
      var info = services.getUsers();
      list.addAll(await info);
    } catch (e) {
      print("Some Error Occured!");
      print(e);
    } finally {
      _loading.value = true;
    }
  }
}
