
import 'package:get/get.dart';

class UserController extends GetxController{
  //I set the default value as false;

  //this object is declared as Rx in order to be reactive in the UI inside the Obx Widget
  Rx<bool> isUserLoggedIn = false.obs;



}