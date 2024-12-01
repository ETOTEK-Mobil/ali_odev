
class AuthValidators {
  static String? validateEmail (String? email){
    if(email == null || email.isEmpty){
      return "please enter a email";
    }
    final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if(!emailRegex.hasMatch(email)){
      return "please enter valid email";
    }
    return null;
  }

  static String? validatePassword (String? password){
    if (password == null || password.isEmpty){
      return "please enter a password";
    }
    if (password.length < 6 ){
      return "password must be greather than 6 characters";
    }
    if (!password.contains(".")){
      return "password must include \".\"";
    }
    return null;
  }
}