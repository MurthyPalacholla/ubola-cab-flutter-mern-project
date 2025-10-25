import 'package:get/get.dart';
import 'package:sim_card_code/sim_card_code.dart';

class AuthViewModel extends GetxController{

  var dummyList = <String>[].obs;
  var originalList = <String>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    printSimCardsData();
  }

  void printSimCardsData() async {
    dummyList.clear();
    originalList.clear();
    try {
      var phoneNumber = await SimCardManager.phoneNumber;
      if (phoneNumber != null) {
        phoneNumber = phoneNumber.replaceFirst(RegExp(r'^\+?91'), '');
        dummyList.add(phoneNumber);
      }
      if(dummyList.isNotEmpty){
        originalList.value = dummyList;
      }
    } on Exception catch (e) {
      print("error! code: ${e.toString()} - message: ${e.toString()}");
    }
  }

}
