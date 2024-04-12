import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_screen.dart';

class SigninScreen extends StatefulWidget{

  const SigninScreen({super.key});
  @override
  State createState () => SigninScreenState();
}

class SigninScreenState extends State{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ 
            const SizedBox(
              height: 20,
              width: 400,
            ),
            Image.asset("assets/images/logo.png"),
      
            const SizedBox(
              height: 20,
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Create your Account",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        blurRadius: 10,
                        offset: Offset(0, 3)
                      )
                    ]
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "    Name",
                      border: InputBorder.none
                    )
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                 Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        blurRadius: 10,
                        offset: Offset(0, 3)
                      )
                    ]
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "    Username",
                      border: InputBorder.none
                    )
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        blurRadius: 10,
                        offset: Offset(0, 3)
                      )
                    ]
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "    Password",
                      border: InputBorder.none
                    )
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        blurRadius: 10,
                        offset: Offset(0, 3)
                      )
                    ]
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "    Confirm Password",
                      border: InputBorder.none
                    )
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                GestureDetector(
                  child: Container(
                    width: 300,
                    height: 49,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(14, 161, 125, 1),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          blurRadius: 10,
                          offset: Offset(0, 3)
                        )
                      ]
                    ),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 15
                        ),
                      ),
                    ),                   
                  ),

                  onTap: (){},
                )
              ],
            ),

            const Spacer(),
            Row(
              children: [

                const SizedBox(
                  width: 50,
                ),

                Text("Already have an account?",
                  style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12
                        ),
                ),

                GestureDetector(
                  child: Text(" Sign In",
                    style: GoogleFonts.poppins(
                      color: const Color.fromRGBO(14, 161, 125, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 12
                          ),
                  ),

                  onTap: (){
                    Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (BuildContext context) => 
                      const Login_screen()
                  )
                );
                  },
                )
                
              ],
            )
          ]
        ),
      ),
    );
  }
}