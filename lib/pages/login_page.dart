import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 500,
              height: 600,
              child: Image.asset(
                "assets/images/pic1.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password cannot be empty";
                      } else if (value.length < 6) {
                        return "Password length should be atleast 6";
                      }

                      return null;
                    },
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  ElevatedButton(
                    child: Text("Login"),
                    style: TextButton.styleFrom(),
                    onPressed: () {
                      print("Hello User");
                    },
                  ),
                  // Material(
                  //   color: Colors.deepPurple,
                  //   borderRadius:
                  //       BorderRadius.circular(changeButton ? 50 : 8),
                  //   child: InkWell(
                  //     onTap: () => moveToHome(context),
                  //     child: AnimatedContainer(
                  //       duration: Duration(seconds: 1),
                  //       width: changeButton ? 50 : 150,
                  //       height: 50,
                  //       alignment: Alignment.center,
                  //       child: changeButton
                  //           ? Icon(
                  //               Icons.done,
                  //               color: Colors.white,
                  //             )
                  //           : Text(
                  //               "Login",
                  //               style: TextStyle(
                  //                   color: Colors.white,
                  //                   fontWeight: FontWeight.bold,
                  //                   fontSize: 18),
                  //             ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
