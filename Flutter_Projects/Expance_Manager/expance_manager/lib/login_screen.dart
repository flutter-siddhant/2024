import 'package:expance_manager/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const Login_screen());
}

class Login_screen extends StatelessWidget {
  const Login_screen({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    String userName1 = "Sidhant";
    String pass1 = "Siddhu@123";

    String userName2 = "Vishal";
    String pass2 = "Vishal@123";

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Login to your Account",
                  style: GoogleFonts.poppins(
                    fontSize: 16, 
                    fontWeight: FontWeight.w500
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                decoration:  BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Adjust shadow color as needed
                    blurRadius: 10, // Adjust blur radius for shadow softness
                    spreadRadius: 2.0, // Adjust spread radius for shadow size
                    offset: Offset(2.0, 2.0), // Adjust offset for shadow direction
                  ),
                ]
                  ),
                  child: TextFormField(
                    controller: userNameTextEditingController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "    Username",
                      
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter username";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration:  BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Adjust shadow color as needed
                    blurRadius: 10, // Adjust blur radius for shadow softness
                    spreadRadius: 2.0, // Adjust spread radius for shadow size
                    offset: Offset(2.0, 2.0), // Adjust offset for shadow direction
                  ),
                ]
                  ),
                  child: TextFormField(
                    controller: passwordTextEditingController,
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: const InputDecoration(
                      hintText: "    Password",
                      border:InputBorder.none   
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter password";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 340,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      bool loginValidated = _formKey.currentState!.validate();
                      if ((userNameTextEditingController.text == userName1 &&
                              passwordTextEditingController.text == pass1) ||
                          (userNameTextEditingController.text == userName2 &&
                                  passwordTextEditingController.text ==
                                      pass2) &&
                              loginValidated) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Login Successful"),
                          ),
                        );

                      //   Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => imageUpload()),
                      // );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Login Failed"),
                          ),
                        );
                      }

                      
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(14, 161, 125, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 5),
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.poppins(
                        fontSize: 24.0, 
                        fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const SizedBox(
                  height: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Don’t have an account? ",
                          style: GoogleFonts.poppins(
                            fontSize: 12, 
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(0, 0, 0, 0.6),
                          ),
                        ),
                        GestureDetector(
                          child: Text(
                            "Sign In",
                            style: GoogleFonts.poppins(
                              fontSize: 12, 
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(14, 161, 125, 1),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SigninScreen()),
                            );
                          },
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}