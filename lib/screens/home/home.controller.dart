import 'package:get/get.dart';

class HomeController extends GetxController {
  var search = "".obs;

  handleChangeSearch(String value) => search.value = value;
}
