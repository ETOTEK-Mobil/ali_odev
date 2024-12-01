import 'package:flutter/material.dart';
import 'package:odev/core/constants/app_sizes.dart';
import 'package:odev/ui/utils/auth_validators.dart';


class TextTextFieldPage extends StatefulWidget {
  const TextTextFieldPage({super.key});

  @override
  State<TextTextFieldPage> createState() => _TextTextFieldPageState();
}

class _TextTextFieldPageState extends State<TextTextFieldPage> {
  
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  void _login(){
    if (_formKey.currentState!.validate()) {
      Navigator.pop(context);
      } else {
      setState(() {
      _autovalidateMode = AutovalidateMode.onUserInteraction;
      });
}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          autovalidateMode: _autovalidateMode,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _emailController,
                    validator: AuthValidators.validateEmail,
                    decoration: InputDecoration(
                      labelText: "E-mail",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(AppSize.md)),
                      prefixIcon:const Icon(Icons.mail),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: !_isPasswordVisible,
                    controller: _passwordController,
                    validator: AuthValidators.validatePassword,
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(AppSize.md)),
                      prefixIcon:const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        }, 
                        icon: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off)
                        ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    _login();
                  }, 
                  child:const Text("Login")
                  ),
              ],
            ),
          ) ,
        ),
      )
    );
  }
}