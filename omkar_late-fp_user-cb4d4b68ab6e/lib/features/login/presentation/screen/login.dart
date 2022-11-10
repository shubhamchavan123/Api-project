import 'package:apidemo/features/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<LoginController>(
      create: (context) => LoginController(),
      child: Consumer<LoginController>(
        builder: (context, data, child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Login UI'),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                /// Username
                TextFormField(
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                  controller: data.usernameController,
                ),

                /// Password
                TextFormField(
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                  controller: data.passwordController,
                  obscureText: data.isObscure,
                  decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                    labelText: 'Password',
                    focusColor: Colors.black54,
                    suffixIcon: IconButton(
                      icon: Icon(
                        data.isObscure ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        data.showPassword(data.isObscure);
                      },
                    ),
                  ),
                ),

                /// Button
                ElevatedButton(
                  child: Text('LOGIN'),
                  onPressed: () {
                    String username = data.usernameController!.text;
                    String password = data.passwordController!.text;

                    debugPrint('username: $username, password: $password');
                    data.onLogin(username, password);
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }


}
