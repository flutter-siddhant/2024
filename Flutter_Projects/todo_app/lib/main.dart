import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDoApp(),
      debugShowCheckedModeBanner: false,    
    );
  }
}


class ToDoApp extends StatefulWidget{
  const ToDoApp({super.key});

  
  @override
  State createState() => _ToDoModelState();

}

class ToDoModelClass{

  String title;
  String description;
  String date;

  ToDoModelClass({
    required this.title,
    required this.description,
    required this.date,
  });
}
class _ToDoModelState extends State<ToDoApp>{

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionControler = TextEditingController();
  TextEditingController dateController = TextEditingController();

    List colorList = [
      Color.fromRGBO(250, 232, 232, 1), 
      Color.fromRGBO(232, 237, 250, 1), 
      Color.fromRGBO(250, 249, 232, 1),
      Color.fromRGBO(250, 232, 250, 1)
    ];  

  void showBottomSheet(bool doEdit, [ToDoModelClass? toDoModelObj]){
    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      //closing the bottom sheet by tapping on the background area surrounding it
      isDismissible: true,

      context:context,
      builder:(BuildContext context){
        return Padding(

          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            // TO AVOID THE KEYBOARD OVERLAP THE SCREEN
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Text(
                "Create Task",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Title",
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    )
                  ),
                  const SizedBox(
                    height:3
                  ),
                  TextField(
                    controller:titleController,
                    decoration: InputDecoration(
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(0,139,148,1),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.purpleAccent),
                        borderRadius: BorderRadius.circular(12),
                      )
                    ),
                  ),
                  const SizedBox(
                    height:12
                  ),
                  Text(
                    "Descrpition",
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    )
                  ),
                  const SizedBox(
                    height:3
                  ),
                  TextField(
                    controller:descriptionControler,
                    maxLines: 4, 
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      )
                    ),
                  ),
                  Text(
                    "Date",
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    )
                  ),
                  const SizedBox(
                    height:3
                  ),
                  TextField(
                    controller:dateController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      suffixIcon: Icon(
                       Icons.date_range_rounded, 
                      ),
                    ),
                    readOnly: true,
                    onTap: ()async{
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(), 
                        firstDate: DateTime(2024) , 
                        lastDate: DateTime(2025),
                      );
                        // Formats the date into the time reqired format of the date i.e. year month date
                      String formatedDate = 
                        DateFormat.yMMMd().format(pickedDate!);
                        
                        setState(() {
                          dateController.text = formatedDate;
                        });
                      },
                    )
                  ],  
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(borderRadius:BorderRadius.circular(30)),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: const Color.fromRGBO(0,139,148,1),
                ),
                onPressed:(){
                  doEdit ? submitTask(doEdit, toDoModelObj) : submitTask(doEdit);
                }, 
                child: Text(
                  "Submit",
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20
                  )
                ),
              ) 
            ),
            const SizedBox(
              height: 10,
            )
            ]
          )
        );
      }
    );
  }

  void submitTask(bool doEdit, [ToDoModelClass? toDoModelObj]){
    if(titleController.text.trim().isNotEmpty && 
    descriptionControler.text.trim().isNotEmpty &&
    dateController.text.trim().isNotEmpty){
      if(!doEdit){
        setState(() {
          cardList.add(
            ToDoModelClass(
            title: titleController.text.trim(), 
            description: descriptionControler.text.trim(), 
            date: dateController.text.trim(),
            ),
          );
        });
      }else{
        setState(() {
          toDoModelObj!.date = dateController.text.trim();
          toDoModelObj.description = descriptionControler.text.trim();
          toDoModelObj.title = titleController.text.trim();
          
        });
      }

      // WE ARE USING THIS TO POP THE BOTTOM SHEET
      Navigator.pop(context);
    }
    clearController(); 
  }

  // TO CLEAR ALL THE TEXT EDITION CONTROLERS
  void clearController(){

    titleController.clear();
    descriptionControler.clear();
    dateController.clear();
  }

  // TO DELETE THE NOTE
  void deleteTask(int index){
    setState(() {
      cardList.removeAt(index);
    });
  }

  // ASSIGN THE TEXT EDITING CONTROLLERS WITH THE TEXT VALUES AND THEN OPEN THE BOTTOM SHEET
  void editTask(ToDoModelClass toDoModelObj){
    titleController.text = toDoModelObj.title;
    descriptionControler.text = toDoModelObj.description;
    dateController.text = toDoModelObj.date;

    showBottomSheet(true, toDoModelObj);
  }


  List<ToDoModelClass> cardList = [
    ToDoModelClass(
      title: "To Do App complete",
      description: "you have to complete todays all assigneed task.",
      date: "Feb 26, 2024",
    ),
  ];

  @override
  void dispose(){
    super.dispose();
    titleController.dispose();
    dateController.dispose();
    descriptionControler.dispose();
  }
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tick Tock, Tasks to Unlock"),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: ListView.builder(
        itemCount: cardList.length,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            child: Container(
              height: 130,
              width: 330,
              decoration: BoxDecoration(

                // GIVING COLOR TO THE CARD 
                color: colorList[index],

                borderRadius: const BorderRadius.all(Radius.circular(15)),
                boxShadow: const [
                  BoxShadow(           
                    offset: Offset(0, 10),
                    color: Color.fromRGBO(0,0,0,0.5),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: 
                Padding(padding: const EdgeInsets.all(10),
                child:
              Column(
                children: [
                  //Row 1
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 52,
                        width: 52,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0,0,0,0.07),
                            ),
                          ],
                        ),
                        child: Image.network(
                          'https://static.thenounproject.com/png/1530441-200.png'
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                      child:                       
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(cardList[index].title,
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w600,
                              fontSize:14,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(cardList[index].description,
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      ),
                    ],
                  ),
                          // Row 2
                          Row( 
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                cardList[index].date,
                                style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                ),
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    child : const Icon(
                                      Icons.edit_note_outlined,
                                      color:Color.fromRGBO(2,167,177,1),
                                      size: 20,
                                    ),
                                    onTap: (){
                                      editTask(cardList[index]);
                                    },
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  GestureDetector(
                                    child : const Icon(
                                      Icons.delete_forever_outlined,
                                      color:Color.fromRGBO(2,167,177,1),
                                      size: 20,
                                    ),
                                    onTap: (){
                                      deleteTask(index);
                                    },
                                  ),
                                ],
                              )
                           ],
                          )
                        ],
                      ),
                      ) 
                  ) 
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(0,139,148,1),
        onPressed: (){
        //  clearController();
          showBottomSheet(false);
        },
        child:const Icon(
          size: 40,
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
