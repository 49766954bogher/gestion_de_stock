// import 'package:flutter/material.dart';
// import '../models/items_model.dart';

// class Menu extends StatelessWidget {
//   const Menu({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(left: lp),
//       child: ExpansionTile(
//         leading: Icon(menuItem.icon),
//         title: Text(
//           menuItem.title,
//           style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
//         ),
//         children: menuItem.children.map(_buildMenuList).toList(),
//       ),
//     );
//   }

//   Widget _buildMenuList(Menu menuItem) {
//     //build the expansion tile
//     double lp = 0; //left padding
//     double fontSize = 20;
//     if (menuItem.level == 1) {
//       lp = 20;
//       fontSize = 16;
//     }
//     if (menuItem.level == 2) {
//       lp = 30;
//       fontSize = 14;
//     }

//     if (menuItem.children.isEmpty) {
//       return Builder(
//         builder: (context) {
//           return InkWell(
//               child: Padding(
//                 padding: EdgeInsets.only(left: lp),
//                 child: ListTile(
//                   leading: Icon(menuItem.icon),
//                   title: Text(
//                     menuItem.title,
//                     style: const TextStyle(
//                         fontWeight: FontWeight.bold, fontSize: 18),
//                   ),
//                 ),
//               ),
//               onTap: () {
//                 // Close the drawer
//                 // Navigator.pop(context);

//                 // //Then direct user to dashboard page
//                 // Navigator.push(
//                 //   context,
//                 //   MaterialPageRoute(
//                 //     builder: (context) => Dashboard(menuItem),
//                 //   ),
//               });
//         },
//       );
//     }
//   }
// }


// // Widget _buildDrawer() {
// //   return ListView.separated(
// //     padding: const EdgeInsets.only(top: 0),
// //     itemCount: data.length,
// //     itemBuilder: (BuildContext context, int index) {
// //       if (index == 0) {
// //         return _buildDrawerHeader(data[index]);
// //       }
// //       return _buildMenuList(data[index]);
// //     },
// //     separatorBuilder: (BuildContext context, int index) => const Divider(
// //       height: 1,
// //       thickness: 2,
// //     ),
// //   );
// // }

// // Widget _buildDrawer() {
// //   return ListView.separated(
// //     padding: const EdgeInsets.only(top: 0),
// //     itemCount: data.length,
// //     itemBuilder: (BuildContext context, int index) {
// //       if (index != 0) {
// //         return _buildMenuList(data[index]);
// //       }
// //     },
// //     separatorBuilder: (BuildContext context, int index) => const Divider(
// //       height: 1,
// //       thickness: 2,
// //     ),
// //   );
// // }
