// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:mobadraa/UI/home.dart';
//
// class Register extends StatefulWidget {
//   const Register({Key? key}) : super(key: key);
//
//   @override
//   State<Register> createState() => _RegisterState();
// }
//
// class _RegisterState extends State<Register> {
//   TextEditingController nationalID = TextEditingController();
//   TextEditingController name = TextEditingController();
//   TextEditingController phone = TextEditingController();
//   TextEditingController address = TextEditingController();
//   TextEditingController policeStation = TextEditingController();
//
//   // TextEditingController governorate = TextEditingController();
//   String governorate = "المحافظة"; //This is the selection value. It is also present in my array.
//   final governorates = [
//     "المحافظة",
//     "الإسكندرية",
//     "الإسماعيلية",
//     "أسوان",
//     "أسيوط",
//     "الأقصر",
//     "البحر الأحمر",
//     "البحيرة",
//     "بني سويف",
//     "بورسعيد",
//     "جنوب سيناء",
//     "الجيزة",
//     "الدقهلية",
//     "دمياط",
//     "سوهاج",
//     "السويس",
//     "الشرقية",
//     "شمال سيناء",
//     "الغربية",
//     "الفيوم",
//     "القاهرة",
//     "القليوبية",
//     "قنا",
//     "كفر الشيخ",
//     "مطروح",
//     "المنوفية",
//     "المنيا",
//     "الوادي الجديد",
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           backgroundColor: Color(0xff711042 ),
//           title:Align(
//             alignment: Alignment.centerRight,
//             child: Text("تسجيل",
//               textDirection: TextDirection.rtl,
//                ),
//           )),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Align(
//             alignment: Alignment.center,child: Text("سجل الان",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontFamily: 'ExtraBold',color: Color(0xff601741)),)),
//           ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 controller: nationalID,
//                 decoration:  InputDecoration(
//                   fillColor: Colors.white,
//                   filled: true,
//                   hintText: 'رقم القومي',
//                   labelText: 'رقم القومي',
//                   labelStyle:TextStyle( color: Color(0xffb395a4,),fontFamily: 'Almarai',) ,
//                   hintStyle:TextStyle( color: Color(0xffb395a4),fontFamily: 'Almarai'),
//                   prefixIcon: Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: Image.asset(
//                       'assets/id.png',
//                       width: 20,
//                       height: 20,
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                   suffixIcon: nationalID.text.isEmpty
//                       ? Container(width: 0)
//                       : IconButton(
//                     icon: const Icon(Icons.close,color: Color(0xffa0a0a0),),
//                     onPressed: () => nationalID.clear(),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Color(0xff710c46), width: 3 ),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color:  Color(0xff710c46), width: 2),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//                 keyboardType: TextInputType.phone,
//                 textInputAction: TextInputAction.done,
//               ),
//             ),
//             Padding(
//
//               padding: const EdgeInsets.all(10.0),
//
//               child: TextFormField(
//
//                 controller: name,
//
//
//
//
//
//                 decoration:  InputDecoration(
//
//                   fillColor: Colors.white,
//
//                   filled: true,
//
//                   hintText: 'الاسم',
//
//                   labelText: 'الاسم',
//
//
//
//                   labelStyle:TextStyle( color: Color(0xffb395a4),fontFamily: 'Almarai',) ,
//
//                   hintStyle:TextStyle( color: Color(0xffb395a4),fontFamily: 'Almarai',) ,
//
//                   prefixIcon: Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: Image.asset(
//                       'assets/user.png',
//                       width: 15,
//                       height: 15,
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//
//
//
//                   // icon: Icon(Icons.mail),
//
//                   suffixIcon: name.text.isEmpty
//
//                       ? Container(width: 0)
//
//                       : IconButton(
//
//                     icon: const Icon(Icons.close,color: Color(0xffa0a0a0),),
//
//                     onPressed: () => name.clear(),
//
//                   ),
//
//                   enabledBorder: OutlineInputBorder(
//
//                     borderSide: BorderSide(color: Color(0xff710c46), width: 3 ),
//
//                     borderRadius: BorderRadius.circular(30),
//
//                   ),
//
//                   focusedBorder: OutlineInputBorder(
//
//
//
//                     borderSide: BorderSide(color:  Color(0xff710c46), width: 2),
//
//                     borderRadius: BorderRadius.circular(30),
//
//                   ),
//
//                   border: OutlineInputBorder(
//
//                     borderRadius: BorderRadius.circular(30),
//
//
//
//                   ),
//
//                 ),
//
//                 keyboardType: TextInputType.name,
//
//                 textInputAction: TextInputAction.done,
//
//
//
//               ),
//
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: TextFormField(
//                 controller: phone,
//                 decoration:  InputDecoration(
//                   fillColor: Colors.white,
//                   filled: true,
//                   hintText: 'رقم التلفون',
//                   labelText: 'رقم التلفون',
//                   labelStyle:TextStyle( color: Color(0xffb395a4),fontFamily: 'Almarai',) ,
//                   hintStyle:TextStyle( color: Color(0xffb395a4),fontFamily: 'Almarai',) ,
//                   prefixIcon: Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: Image.asset(
//                       'assets/mobile.png',
//                       width: 25,
//                       height: 25,
//
//                     ),
//                   ),
//                   suffixIcon: phone.text.isEmpty
//                       ? Container(width: 0)
//                       : IconButton(
//                     icon: const Icon(Icons.close,color: Color(0xffa0a0a0),),
//                     onPressed: () => phone.clear(),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Color(0xff710c46), width: 3 ),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color:  Color(0xff710c46), width: 2),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//                 keyboardType: TextInputType.phone,
//                 textInputAction: TextInputAction.done,
//               ),
//             ),
//             Container(
//               height: MediaQuery.of(context).size.height * 0.08,
//               margin: const EdgeInsets.all(10),
//               padding: const EdgeInsets.all(10),
//               decoration:  BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(
//                   color: Color(0xff710c46),
//                   width: 3,),
//                 borderRadius: BorderRadius.all(
//                     Radius.circular(30)), // set rounded corner radius
//               ),
//               alignment: AlignmentDirectional.center,
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Expanded(
//                       child: DropdownButtonHideUnderline(
//                         child: DropdownButton(
//                           items: governorates.map((String item) => DropdownMenuItem<String>(
//                               child: Center(child: Text(item)),
//                               value: item))
//                               .toList(),
//                           onChanged: (String? value) {
//                             setState(() {
//                               print("previous ${this.governorate}");
//                               print("selected $value");
//                               this.governorate =
//                               value!;
//                             });
//                           },
//                           value: governorate,
//                         ),
//                       ),
//                     )
//                   ]),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: TextFormField(
//                 controller: address,
//                 decoration:  InputDecoration(
//                   fillColor: Colors.white,
//                   filled: true,
//                   hintText: 'العنوان',
//                   labelText: 'العنوان',
//                   labelStyle:TextStyle( color: Color(0xffb395a4),fontFamily: 'Almarai',) ,
//                   hintStyle:TextStyle( color: Color(0xffb395a4),fontFamily: 'Almarai',) ,
//                   prefixIcon: Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: Image.asset(
//                       'assets/home.png',
//                       width: 20,
//                       height: 20,
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                   suffixIcon: address.text.isEmpty
//                       ? Container(width: 0)
//                       : IconButton(
//                     icon: const Icon(Icons.close,color: Color(0xffa0a0a0),),
//                     onPressed: () => address.clear(),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Color(0xff710c46), width: 3 ),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color:  Color(0xff710c46), width: 2),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//                 keyboardType: TextInputType.text,
//                 textInputAction: TextInputAction.done,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: TextFormField(
//                 controller: policeStation,
//                 decoration:  InputDecoration(
//                   fillColor: Colors.white,
//                   filled: true,
//                   hintText: 'قسم الشرطه',
//                   labelText: 'قسم الشرطه ',
//                   labelStyle:TextStyle( color: Color(0xffb395a4),fontFamily: 'Almarai',) ,
//                   hintStyle:TextStyle( color: Color(0xffb395a4),fontFamily: 'Almarai',) ,
//                   prefixIcon: Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: Image.asset(
//                       'assets/pl.png',
//                       width: 20,
//                       height: 20,
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                   suffixIcon: policeStation.text.isEmpty
//                       ? Container(width: 0)
//                       : IconButton(
//                     icon: const Icon(Icons.close,color: Color(0xffa0a0a0),),
//                     onPressed: () => policeStation.clear(),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Color(0xff710c46), width: 3 ),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color:  Color(0xff710c46), width: 2),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//                 keyboardType: TextInputType.text,
//                 textInputAction: TextInputAction.done,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ElevatedButton(style: ButtonStyle(
//                 shadowColor: MaterialStateProperty.all(Color(0xff710c46).withOpacity(.3),),
//                 shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),),
//                 fixedSize: MaterialStateProperty.all<Size>(Size(500.w, 120.h)),
//                 backgroundColor: MaterialStateProperty.all(Color(0xff710c46)),
//               ),
//
//
//                 onPressed: () {
//                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
//                 },
//
//                 child: const Text("تسجيل",style: TextStyle(fontSize: 20,fontFamily: 'Almarai'),),),
//             ),
//
//           ],
//         ),
//       )
//     );
//   }
//
// }
