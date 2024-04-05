import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class imageUpload extends StatefulWidget {
  const imageUpload({Key? key}) : super(key: key);

  @override
  State<imageUpload> createState() => _imageUploadState();
}

class _imageUploadState extends State<imageUpload> {

  File? _image;

  bool showPreview = false; // Flag to control preview visibility

  final picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
  final pickedFile = await picker.pickImage(source: source);

  setState(() {
    if (pickedFile != null) {
      _image = File(pickedFile.path);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Image uploaded successfully!'),
          duration: Duration(seconds: 2),
        ),
      );
    } else {
      print('No image selected.');
    }
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              "Upload a Image",
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: const Color.fromRGBO(0, 0, 0, 1),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 296,
              height: 509,
              child: Stack(
                // Use Stack to position elements on top of each other
                children: [
                  // Dotted border
                  Positioned.fill(
                    // Fills the entire container
                    child: DottedBorder(
                      color:
                          const Color.fromRGBO(0, 0, 0, 0.66), // Set dash color
                      dashPattern: const [6, 6],
                      strokeWidth: 1.0, // Set dash line width
                      child: Container(), // Empty container to occupy the space
                    ),
                  ),
                  // Image *******************
                  // Center(
                  //   child: Positioned(
                  //     // Adjust positioning as needed (e.g., center, topLeft, etc.)
                  //     top: 10.0, // Adjust top padding
                  //     left: 10.0, // Adjust left padding
                  //     child: _image!=null?Image.file(_image!):
                  //        Image.asset(
                  //         'assets/images/image.png',
                  //         width: 100,
                  //         height: 100, 
                  //       ),
                  //   ),
                  // )
                  // Show preset image or selected image based on showPreview flag
                  Center(
                    child: showPreview
                        ? (_image != null ? Image.file(_image!) : const Text('No image selected')) // Show selected image if previewing
                        : Image.asset( // Show preset image otherwise
                            'assets/images/image.png',
                            width: 100.0,
                            height: 100.0,
                          ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            const SizedBox(
              height: 45,
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () async {
                    await _pickImage(ImageSource.gallery);
                      // Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(119, 35),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 34.0, vertical: 7.0),
                    backgroundColor: const Color.fromRGBO(246, 131, 38, 1),
                    elevation: 4.0,
                    shadowColor: const Color.fromRGBO(0, 0, 0, 0.25),
                  ),
                  child: Text(
                    'Upload',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      showPreview = _image != null; // Show preview only if image is selected
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(112, 35),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 39.0, vertical: 7.0),
                    backgroundColor: const Color.fromRGBO(211, 211, 214, 1),
                    elevation: 4.0,
                    shadowColor: const Color.fromRGBO(0, 0, 0, 0.25),
                  ),
                  child: Text(
                    'View',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}