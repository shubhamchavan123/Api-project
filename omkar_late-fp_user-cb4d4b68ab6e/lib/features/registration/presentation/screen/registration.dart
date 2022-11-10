import 'package:apidemo/features/registration/registration_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RegistrationController>(
      create: (context) => RegistrationController(),
      child: Consumer<RegistrationController>(
        builder: (context, data, child) {
          return Scaffold(

            // backgroundColor:Color.fromARGB(200, 20,250, 220),
            backgroundColor: Colors.pink.shade100,
            appBar: AppBar(
              title: const Text('Registration UI'),
            ),
            body: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                /// Username
                TextFormField(
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                  controller: data.registrationfirstnameController,
                  decoration: InputDecoration(
                      hintText: "Enter  FirstName", labelText: "FirstName"),
                ),

                TextFormField(
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                  controller: data.registrationlastnameController,
                  decoration: InputDecoration(
                      hintText: "Enter  LastName", labelText: "LastName"),
                ),

                TextFormField(
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                  controller: data.registrationusernameController,
                  decoration: InputDecoration(
                      hintText: "Enter  UserName", labelText: "UserName"),

                ),

                /// Password
                TextFormField(

                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                  controller: data.registrationpasswordController,
                  obscureText: data.isObscure,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: const UnderlineInputBorder(),
                    labelText: 'Password',
                    focusColor: Colors.black54,
                    suffixIcon: IconButton(
                      icon: Icon(
                        data.isObscure ? Icons.visibility_off : Icons
                            .visibility,
                      ),
                      onPressed: () {
                        data.showPassword(data.isObscure);
                      },
                    ),
                  ),
                ),
              // OTP
                TextFormField(
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                  controller: data.registrationotpdController,
                  decoration: InputDecoration(
                      hintText: "Enter  UserOTP", labelText: "OTP"),

                ),

                SizedBox(
                  height: 20,
                ),

                /// Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  child: Text('Registration'),
                  onPressed: () {
                    String firstname = data.registrationfirstnameController!
                        .text;
                    String lastname = data.registrationlastnameController!.text;
                    String username = data.registrationusernameController!.text;
                    String password = data.registrationpasswordController!.text;
                    String otp = data.registrationotpdController!.text;
                    //debugPrint('username: $username, password: $password');
                    data.onRegistration(
                        firstname, lastname, username, password,otp);






                  },
                ),


              ],
            ),
          );
        },
      ),
    );
  }



  }
