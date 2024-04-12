import 'package:expance_manager/mymenu_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});
  @override
  State createState() => CategoriesScreenState();
}

class CategoriesScreenState extends State {

  void showBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            isDismissible: true,
            builder: (BuildContext context) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min, 
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Center(
                              child: Container(
                                width: 74,
                                height: 74,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(140, 128, 128, 0.2),
                                ),
                                child: Container(
                                  height: 22,
                                  width: 22,
                                  child: Image.asset(
                                    "assets/images/img.png"
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Add",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Colors.black
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Image URL",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, 
                            fontSize: 13),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Enter URL",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          )
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                        "Category",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400, 
                          fontSize: 13),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Enter Category",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                              width: 30,
                            ),
                          ),
                        )
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    width: 123,
                    height: 40,
                
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(14, 161, 125, 1),
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Center(
                      child: Text(
                            "Add",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color.fromRGBO(255,255,255,1)
                              ),
                          ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 13,
                )
              ]));
        });
  }

  List cImages = [
    Image.asset("assets/images/food.png"),
    Image.asset("assets/images/fuel.png"),
    Image.asset("assets/images/medicine.png"),
    Image.asset("assets/images/shopping.png"),
  ];

  List cText = [
    "Food",
    "Fuel",
    "Medicine",
    "Shopping",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          "Categories",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500, 
              fontSize: 16, 
              color: Color.fromRGBO(33, 33, 33, 1)
            ),
        ),
        elevation: 0,
      ),
      drawer: MyMenu(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),

        padding: EdgeInsets.all(8),

        itemCount: 4,

        itemBuilder: (context, index) {
          return  Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(14)),
              color: Color.fromRGBO(255, 255, 255, 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.15), 
                  blurRadius: 8.0,
                  offset: const Offset(0, 3),
                )
              ]
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: 74,
                  height: 74,
                  child: cImages[index],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "${cText[index]}",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color.fromRGBO(33, 33, 33, 1),
                  ),
                )
              ]
            ),
          );
        }
      ),
      floatingActionButton: Container(
        width: 180,
        height: 50,
        child: FloatingActionButton(
            onPressed: () {
              showBottomSheet();
            },
            backgroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.add_circle_rounded,
                  color: Color.fromRGBO(14, 161, 125, 1),
                  size: 35,
                ),
                Text(
                  "  Add Transaction ",
                  style: GoogleFonts.poppins(
                      color: Color.fromARGB(224, 0, 0, 0),
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              ],
            )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}