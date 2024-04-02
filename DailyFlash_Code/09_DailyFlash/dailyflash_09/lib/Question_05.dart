import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget{
  const Assignment4({super.key});

  State<Assignment4> createState() => _StateAssignment4();

}

class _StateAssignment4 extends State<Assignment4>{

  TextEditingController controller1 = TextEditingController();
  FocusNode node1 = FocusNode();

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
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Submit",
              )
            )
          ],
        ),
      )
    );
  }
}