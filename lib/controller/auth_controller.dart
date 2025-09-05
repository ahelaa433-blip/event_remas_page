import '../model/user_model.dart';

class AuthController {
  UserModel? _currentUser;

  // تسجيل جديد
  void signUp(String email, String password) {
    _currentUser = UserModel(email: email, password: password);
    print("User signed up: ${_currentUser!.email}");
  }

  // تسجيل دخول
  bool login(String email, String password) {
    if (_currentUser != null &&
        _currentUser!.email == email &&
        _currentUser!.password == password) {
      print("Login success!");
      return true;
    }
    print("Login failed!");
    return false;
  }
}
