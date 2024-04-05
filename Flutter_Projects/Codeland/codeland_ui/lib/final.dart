import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'image_upload.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
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
    String userName1 = "Siddhant";
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
                    Image.asset('assets/images/codeland.png'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: userNameTextEditingController,
                  decoration: const InputDecoration(
                    hintText: "Username",
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1.0)),
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
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordTextEditingController,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: const InputDecoration(
                    hintText: "Password",
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter password";
                    } else {
                      return null;
                    }
                  },
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

                        Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => imageUpload()),
                      );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Login Failed"),
                          ),
                        );
                      }

                      
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(246, 131, 38, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 5),
                    child: Text(
                      "Login",
                      style: GoogleFonts.poppins(
                          fontSize: 24.0, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  "For Assistance & Login Details Contact: ",
                  style: GoogleFonts.poppins(
                      fontSize: 12, fontWeight: FontWeight.w400),
                ),
                Row(
                  children: [
                    Text(
                      "English, Kannada & Telugu :  ",
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "7406333800",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(246, 131, 38, 1),
                        decoration: TextDecoration.underline,
                        decorationThickness: 1.5,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "English, Kannada & Hindi    :   ",
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "9071386515",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(246, 131, 38, 1),
                        decoration: TextDecoration.underline,
                        decorationThickness: 1.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "v1.7",
                          style: GoogleFonts.inter(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "© 2023, Codeland Infosolutions Pvt Ltd.",
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
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


// import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const MainApp());
// // }

// // class MainApp extends StatelessWidget {
// //   const MainApp({super.key});
// //   @override
// //   Widget build(BuildContext context) {
// //     return const MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: LoginPage(),
// //     );
// //   }
// // }

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {

//   TextEditingController userNameTextEditingController = TextEditingController();
//   TextEditingController passwordTextEditingController = TextEditingController();


//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
    
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 width: 210,
//                 height: 349,
//                 // color: Color.fromRGBO(246, 131, 38, 1),
//                // child: Image.asset('assets/images/codeland.png'),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               TextFormField(
//                 controller: userNameTextEditingController,

//                 decoration: InputDecoration(
//                   hintText: "Enter username",
//                   label: const Text("Enter username"),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   prefixIcon: const Icon(
//                     Icons.person,
//                   ),
//                 ),
//                 validator: (value) {
//                   print("In USERNAME VALIDATOR");
//                   if (value == null || value.isEmpty) {
//                     return "Please enter username";
//                   } else {
//                     return null;
//                   }
//                 },
//                 keyboardType: TextInputType.emailAddress,
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               TextFormField(
//                 controller: passwordTextEditingController,

//                 obscureText: true,
//                 obscuringCharacter: "*",
//                 decoration: InputDecoration(
//                   hintText: "Enter password",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   prefixIcon: const Icon(
//                     Icons.lock,
//                   ),
//                   suffixIcon: const Icon(
//                     Icons.remove_red_eye_outlined,
//                   ),
//                 ),
//                 validator: (value) {
//                   print("In PASSWORD VALIDATOR");
//                   if (value == null || value.isEmpty) {
//                     return "Please enter password";
//                   } else {
//                     return null;
//                   }
//                 },
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   bool loginValidated = _formKey.currentState!.validate();
//                   if (loginValidated) {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       const SnackBar(
//                         content: Text("Login Successful"),
//                       ),
//                     );
//                   } else {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       const SnackBar(
//                         content: Text("Login Failed"),
//                       ),
//                     );
//                   }

//                 },
//                 child: const Text("Login"),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }