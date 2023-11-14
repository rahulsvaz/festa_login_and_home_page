

import 'package:festa_login_and_home_page/viewModel/api_calls.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DataController extends GetxController{

var randomData;



@override
void onInit() {

  randomData = ApiCalls.getData();
    super.onInit();
  }



}