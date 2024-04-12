import 'package:expance_manager/categories.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class MyMenu extends StatefulWidget {
  const MyMenu({super.key});
  @override
  State createState() => MyMenuState();
}

class MyMenuState extends State {
    @override
    Widget build(BuildContext context) {
      return  Drawer(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20
              ),
              child: Container(
                child: Text(
                  "Expense Manager",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20
              ),
              child: Text(
                "Saves all your Transaction",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  color: Color.fromRGBO(0, 0, 0, 0.5)
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 184,
              height: 40,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)
                ),
                color: Color.fromRGBO(14, 161, 125, 0.15)
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 18,
                    height: 17,
                    child: Image.asset(
                      "assets/images/tran.png",
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Transaction",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color.fromRGBO(14, 161, 125, 1),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 184,
              height: 40,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 18,
                    height: 17,
                    child: Image.asset(
                      "assets/images/pie.png",
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Graphs",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: const Color.fromRGBO(33, 33, 33, 1),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: Container(
                width: 184,
                height: 40,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 18,
                      height: 17,
                      child: Image.asset(
                        "assets/images/category.png",
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Category",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: const Color.fromRGBO(33, 33, 33, 1),
                      ),
                    )
                  ],
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const CategoriesScreen(),
                  )
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 184,
              height: 40,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 18,
                    height: 17,
                    child: Image.asset(
                      "assets/images/trash.png",
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Trash",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color.fromRGBO(33, 33, 33, 1),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 184,
              height: 40,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 18,
                    height: 17,
                    child: Image.asset(
                      "assets/images/about.png",
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "About Us",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color.fromRGBO(33, 33, 33, 1),
                    ),
                  )
                ],
              ),
            ),
            // IconButton(
            //   onPressed: () {
            //     Navigator.of(context).pop();
            //   },
            //   icon: const Icon(Icons.close),
            // ),
          ],
              ),
        
    );
  }
}

// Widget myMenuDrawer(){
//   return Drawer(
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(
//             top: 20,
//             left: 20
//           ),
//           child: Container(
//             child: Text(
//               "Expense Manager",
//               style: GoogleFonts.poppins(
//                 fontWeight: FontWeight.w600,
//                 fontSize: 16,
//               ),
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(
//             left: 20
//           ),
//           child: Text(
//             "Saves all your Transaction",
//             style: GoogleFonts.poppins(
//               fontWeight: FontWeight.w400,
//               fontSize: 10,
//               color: Color.fromRGBO(0, 0, 0, 0.5)
//             ),
//           ),
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         Container(
//           width: 184,
//           height: 40,
//           decoration: const BoxDecoration(
//             borderRadius: BorderRadius.only(
//               topRight: Radius.circular(20),
//               bottomRight: Radius.circular(20)
//             ),
//             color: Color.fromRGBO(14, 161, 125, 0.15)
//           ),
//           child: Row(
//             children: [
//               const SizedBox(
//                 width: 20,
//               ),
//               Container(
//                 width: 18,
//                 height: 17,
//                 child: Image.asset(
//                   "assets/images/tran.png",
//                 ),
//               ),
//               const SizedBox(
//                 width: 20,
//               ),
//               Text(
//                 "Transaction",
//                 style: GoogleFonts.poppins(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 16,
//                   color: Color.fromRGBO(14, 161, 125, 1),
//                 ),
//               )
//             ],
//           ),
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         Container(
//           width: 184,
//           height: 40,
//           child: Row(
//             children: [
//               const SizedBox(
//                 width: 20,
//               ),
//               Container(
//                 width: 18,
//                 height: 17,
//                 child: Image.asset(
//                   "assets/images/pie.png",
//                 ),
//               ),
//               const SizedBox(
//                 width: 20,
//               ),
//               Text(
//                 "Graphs",
//                 style: GoogleFonts.poppins(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 16,
//                   color: const Color.fromRGBO(33, 33, 33, 1),
//                 ),
//               )
//             ],
//           ),
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         GestureDetector(
//           child: Container(
//             width: 184,
//             height: 40,
//             child: Row(
//               children: [
//                 const SizedBox(
//                   width: 20,
//                 ),
//                 Container(
//                   width: 18,
//                   height: 17,
//                   child: Image.asset(
//                     "assets/images/category.png",
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 20,
//                 ),
//                 Text(
//                   "Category",
//                   style: GoogleFonts.poppins(
//                     fontWeight: FontWeight.w400,
//                     fontSize: 16,
//                     color: const Color.fromRGBO(33, 33, 33, 1),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           onTap: (){
//             Navigator.push(
//               context as BuildContext,
//               MaterialPageRoute(
//                 builder: (BuildContext context) => const CategoriesScreen(),
//               )
//             );
//           },
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         Container(
//           width: 184,
//           height: 40,
//           child: Row(
//             children: [
//               const SizedBox(
//                 width: 20,
//               ),
//               Container(
//                 width: 18,
//                 height: 17,
//                 child: Image.asset(
//                   "assets/images/trash.png",
//                 ),
//               ),
//               const SizedBox(
//                 width: 20,
//               ),
//               Text(
//                 "Trash",
//                 style: GoogleFonts.poppins(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 16,
//                   color: Color.fromRGBO(33, 33, 33, 1),
//                 ),
//               )
//             ],
//           ),
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         Container(
//           width: 184,
//           height: 40,
//           child: Row(
//             children: [
//               const SizedBox(
//                 width: 20,
//               ),
//               Container(
//                 width: 18,
//                 height: 17,
//                 child: Image.asset(
//                   "assets/images/about.png",
//                 ),
//               ),
//               const SizedBox(
//                 width: 20,
//               ),
//               Text(
//                 "About Us",
//                 style: GoogleFonts.poppins(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 16,
//                   color: Color.fromRGBO(33, 33, 33, 1),
//                 ),
//               )
//             ],
//           ),
//         ),
//         // IconButton(
//         //   onPressed: () {
//         //     Navigator.of(context).pop();
//         //   },
//         //   icon: const Icon(Icons.close),
//         // ),
//       ],
//     ),
//   );
// }