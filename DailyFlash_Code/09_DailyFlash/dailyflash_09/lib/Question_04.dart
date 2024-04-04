import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget{
  const Assignment5({super.key});

  State<Assignment5> createState() => _StateAssignment4();

}

class _StateAssignment4 extends State<Assignment5>{

  TextEditingController controller1 = TextEditingController();
  FocusNode node1 = FocusNode();
  TextEditingController controller2 = TextEditingController();
  FocusNode node2 = FocusNode();

  List store1 = [];
  List store2 = [];


  @override 
  build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        //centerTitle: true,
        title: const Text(
          "DailyFlash_09",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            color: Colors.black
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller1,
              focusNode: node1,
              decoration: InputDecoration(
                hintText: "Enter Name",
                labelText: "Name",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Colors.purple,
                  )
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Colors.purple,
                  )
                )
              ),
              keyboardType:TextInputType.name,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller2,
              focusNode: node2,
              decoration: InputDecoration(
                hintText: "Enter Number",
                labelText: "Number",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Colors.purple,
                  )
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Colors.purple,
                  )
                )
              ),
              keyboardType:TextInputType.number,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  store1.add(controller1.text);
                  store2.add(controller2.text);
                });
                controller1.clear();
                controller2.clear();
              },
              child: const Text(
                "Submit",
              )
            ),
            const SizedBox(
              height: 10,
            ),
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: store1.length,
              itemBuilder: (context, index){
                return Text(
                  "name: ${store1[index]} ,phone: ${store2[index]}"
                );
              }
            )
          ],
        ),
      )
    );
  }
}