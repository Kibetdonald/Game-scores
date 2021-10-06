// // ignore_for_file: avoid_print

// import 'package:flutter/material.dart';
// import 'package:gamescores/api/api_manager.dart';
// import 'package:gamescores/screens/pagebody.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({ Key? key }) : super(key: key);

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: const Color(0x00ffffff),
//       appBar: AppBar(
//         title: const Text("Game Score", style: TextStyle(color: Colors.black),),
//         centerTitle: true,
//         elevation: 0.0,
//          backgroundColor: const Color(0x00ffffff),
         
//         // leading: ,
//       ),
//       //API Service
//       body: FutureBuilder(
//         future: SoccerApi().getAllMatches() ,
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             print((snapshot.data).length);
//             return PageBody(snapshot.data);
//           } else {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }},),
//     );
//   }
// }