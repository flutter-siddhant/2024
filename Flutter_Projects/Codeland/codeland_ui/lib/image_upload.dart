import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dotted_border/dotted_border.dart';


class imageUpload extends StatefulWidget {
  const imageUpload({Key? key}) : super(key: key);

  @override
  State<imageUpload> createState() => _imageUploadState();
}

class _imageUploadState extends State<imageUpload> {
  @override
  // void initState() {
  //   super.initState();
  //   Timer(const Duration(seconds: 2), () {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => LoginPage()),
  //     );
  //   });
  // }

  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Container(
                width: 158,
                height: 44,
                child: Center(
                  child: Text(
                    "Upload a Image",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: const Color.fromARGB(0,0,0,1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
  //             Container(
  // decoration: BoxDecoration(
  //   border: Border(
  //     top: BorderSide( // Apply border only to the top side
  //       color: Colors.grey,
  //       style: BorderStyle.dashed, // Set dashed style
  //       width: 2.0, // Set border width
  //     ),
  //   ),
  //   // Other container decorations (optional)
  // ),
  // // Your container content
//),
              Container(
                width: 296,
                height: 509,
                decoration:  BoxDecoration(
                  border: Border.all(
                    color: const Color.fromRGBO(0, 0, 0, 0.66),
                    width: 1.0,
                  )
                ),
                child: Stack( // Use Stack to position elements on top of each other
                  children: [
                    // Dotted border
                    Positioned.fill( // Fills the entire container
                      child: DottedBorder(
                        color: const Color.fromRGBO(0,0,0,0.66), // Set dash color
                        dashPattern: const [3, 3], 
                        strokeWidth: 1.0, // Set dash line width
                        child: Container(), // Empty container to occupy the space
                      ),
                    ),
                    // Image
                    Positioned(
                      // Adjust positioning as needed (e.g., center, topLeft, etc.)
                      top: 10.0, // Adjust top padding
                      left: 10.0, // Adjust left padding
                      child: Center(
                        child: Image.asset(
                          'assets/images/image.png',
                          width: 100,
                          height: 100, 
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 74,
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle button press action (e.g., navigate to upload screen)
                      print('Upload button pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(112, 35), 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0), 
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 39.0, vertical: 7.0), 
                      backgroundColor: const Color.fromRGBO(211, 211, 214, 1),
                      elevation: 4.0, 
                      shadowColor:const Color.fromRGBO(0, 0, 0, 0.25), 
                    ),
                    child: Text(
                      'Upload', 
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        height: 21,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 81,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button press action (e.g., navigate to upload screen)
                      print('Upload button pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(119, 35), 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0), 
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 34.0, vertical: 7.0), 
                      backgroundColor: const Color.fromRGBO(246, 131, 38, 1),
                      elevation: 4.0, 
                      shadowColor:const Color.fromRGBO(0, 0, 0, 0.25), 
                    ),
                    child: Text(
                      'View', 
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        height: 21,
                        color: const Color.fromRGBO(0,0,0,1),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}