import 'package:mvvm_flutter/src/shared/utils/localstorage_util.dart';

class Auth {
  Auth() {
    var storage = LocalStorage();

    if (storage.readData('isLogged') == null) {
      storage.writeData('isLogged', false);
    }
  }

  bool isLogged() {
    var storage = LocalStorage();

    if (storage.readData('isLogged') == true) {
      return true;
    }

    return false;
  }
}
