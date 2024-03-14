// import 'package:flutter/material.dart';
// import 'package:sqflite_common_ffi/sqflite_ffi.dart';
// import 'package:path/path.dart';
// //import 'package:sqflite/sqflite.dart';

// class Zomato{
//   int? orderNo;
//   final String custName;
//   final String hotelName;
//   final String food;
//   final double bill;

//   Zomato(
//     {
//       this.orderNo,
//       required this.custName,
//       required this.hotelName,
//       required this.food,
//       required this.bill,
//     }
//   );

//   Map<String, dynamic> zomatoMap(){
//     return{
//       'custName' : custName,
//       'hotelName' : hotelName,
//       'food': food,
//       'bill': bill
//     };
//   }

//   @override
//   String toString(){
//     return '{orderNo: $orderNo, custName: $custName, hotelName: $hotelName, bill: $bill}';
//   }
// }

// dynamic database;

// Future <void> insertOrderData(Zomato obj) async{
//   final localDB = await database;

//   await localDB.insert(
//     "OrderFood",
//     obj.zomatoMap(),
//     conflictAlgorithm: ConflictAlgorithm.replace,
//   );
// } 

// Future<List<Zomato>> getOrderData() async{
//   final localDB = await database;

//   List<Map<String, dynamic>> orderMap = await 
//     localDB.query("orderFood");

//   return List.generate(orderMap.length, (i){  
//     return Zomato(
//       orderNo: orderMap[i]['orderNo'],
//       custName: orderMap[i]['custName'],
//       hotelName: orderMap[i]['hotelName'],
//       food: orderMap[i]['food'],
//       bill: orderMap[i]['bill'],
//     );
//   });
// }

// void main() async{

//   runApp(const MainApp());

//   sqfliteFfiInit();
//   databaseFactory = databaseFactoryFfi;
//   // WidgetsFlutterBinding.ensureInitialized();
  

//   database = openDatabase(
//     join(await getDatabasesPath(), "ZomatoDB.db"),
//     version: 1,
//     onCreate: (db, version) async{
//       await db.execute(
//         ''' 
//         CREATE TABLE OrderFood(
//           orderNo  INTEGER PRIMARY KEY,
//           custName TEXT,
//           hotelName TEXT,
//           food TEXT,
//           bill REAL,
//         )
//         '''
//       );
//     },
//   );

//   // Insert
//   Zomato order1 = Zomato(
//     custName: "Siddhant",
//     hotelName: "Govindas",
//     food: "Rasgulla",
//     bill: 5030.48,
//   );

//   insertOrderData(order1);

//   Zomato order2 = Zomato(
//     custName: "Krishna",
//     hotelName: "Madhvas",
//     food: "panipuri",
//     bill: 50.48,
//   );

//   insertOrderData(order2);

//   Zomato order3 = Zomato(
//     custName: "Radha",
//     hotelName: "Govindas & Madhvas",
//     food: "Chole Bhature",
//     bill: 500.48,
//   );

//   insertOrderData(order3);

//   print(await getOrderData());
// }
// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Text('Hello World!'),
//         ),
//       ),
//     );
//   }
// }