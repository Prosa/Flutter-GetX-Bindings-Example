
import 'package:get/get.dart';
import 'package:test_get_app/user_controller.dart';

class InitialBindings extends Bindings{
  @override
  void dependencies() {
    UserController.find;
  }

}