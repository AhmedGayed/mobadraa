// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class MoreInfo extends StatefulWidget {
//   const MoreInfo({Key? key}) : super(key: key);
//
//   @override
//   State<MoreInfo> createState() => _MoreInfoState();
// }
//
// class _MoreInfoState extends State<MoreInfo> {
//   final number = '16474';
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       body: SingleChildScrollView(
//
//       ),
//       floatingActionButton: Padding(
//         padding: const EdgeInsets.all(25.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//
//             FloatingActionButton.extended(
//                 onPressed: () async {
//                   launch('tel://$number');
//                 },
//                 backgroundColor: Color(0xff720c47),
//                 hoverColor: Colors.orange,
//                 splashColor: Colors.purple,
//                 elevation: 12,
//                 hoverElevation: 50,
//                 tooltip: 'اتصل الان',
//
//
//                 label: Text("$number",style: TextStyle(fontSize: 18),),
//                 icon: const Icon(Icons.phone)
//             ),
//           ],
//         ),
//       ),
//     );
//
//   }
// }
