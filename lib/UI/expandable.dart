import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home.dart';

class MyData {
  final String title;
  final String subtitle;

  MyData(this.title, this.subtitle);
}

class Item {
  String headerValue;
  String imagePath;
  String iconPath;
  bool isExpanded;
  int? expandedValue;

  Item(
      {required this.expandedValue,
      required this.headerValue,
      required this.imagePath,
      required this.iconPath,
      this.isExpanded = false});
}

class MyExpansionPanelList extends StatefulWidget {
  @override
  _MyExpansionPanelListState createState() => _MyExpansionPanelListState();
}

class _MyExpansionPanelListState extends State<MyExpansionPanelList> {
  final number = '16474';

  int? selected; //attention
  final List<Item> data = [
    Item(
      expandedValue: 1,
      headerValue: 'أنواع الذبحة الصدرية',
      imagePath: 'assets/Group45.png',
      isExpanded: true,
      iconPath: "assets/TypesOf Angina.png",
    ),
    Item(
      expandedValue: 2,
      headerValue: 'الذبحة الصدرية لدى النساء',
      imagePath: 'assets/Group46.png',
      isExpanded: false,
      iconPath: "assets/AnginaPectorisInWomen.png",
    ),
    Item(
      expandedValue: 3,
      headerValue: 'الأسباب',
      imagePath: 'assets/Group48.png',
      isExpanded: false,
      iconPath: "assets/reasons.png",
    ),
    Item(
      expandedValue: 4,
      headerValue: 'متى تزور الطبيب ؟',
      imagePath: 'assets/Group47.png',
      isExpanded: false,
      iconPath: "assets/WhenDoYouSee Adoctor.png",
    ),
    Item(
      expandedValue: 5,
      headerValue: 'المضاعفات',
      imagePath: 'assets/Group49.png',
      isExpanded: false,
      iconPath: "assets/complications.png",
    ),
    Item(
      expandedValue: 6,
      headerValue: 'عوامل الخطر',
      imagePath: 'assets/Group50.png',
      isExpanded: false,
      iconPath: "assets/riskFactors.png",
    ),
    Item(
      expandedValue: 7,
      headerValue: 'طرق الوقاية',
      imagePath: 'assets/3ex.png',
      isExpanded: false,
      iconPath: "assets/heartinhand.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Home()));

        return Future.value(true);
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(8, 50, 8, 8),
          child: Container(
            // decoration: new BoxDecoration (
            //   color: Colors.white,
            //   borderRadius: BorderRadius.only(
            //       topLeft: Radius.circular(10),
            //       topRight: Radius.circular(10),
            //       bottomLeft: Radius.circular(10),
            //       bottomRight: Radius.circular(10)
            //   ),
            //   boxShadow: [
            //     BoxShadow(
            //       color: Color(0xff720c47),
            //       spreadRadius: 2,
            //       blurRadius: 3,
            //       offset: Offset(0, 3), // changes position of shadow
            //     ),
            //   ],
            // ),
            child: ListView.builder(
              key: Key('builder ${selected.toString()}'), //attention
              itemCount: data.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff720c47),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Container(
                      color: const Color(0xff720c47),
                      child: ListTileTheme(
                        data: ListTileThemeData(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: EdgeInsets.zero,
                          visualDensity: VisualDensity.compact,
                          horizontalTitleGap: 0.0,
                          minLeadingWidth: 0,
                          dense: true,
                        ),
                        child: ExpansionTile(
                            trailing: Padding(
                              padding: const EdgeInsets.symmetric(horizontal:10.0),
                              child: Image.asset(
                                data[i].iconPath,
                                width: 32,
                                height: 32,
                                color: Colors.amber,
                              ),
                            ),
                            textColor: Colors.red,
                            key: Key(i.toString()),
                            initiallyExpanded:
                                data[i].isExpanded || i == selected,
                            leading: const SizedBox(),
                            title: Text(
                              data[i].headerValue,
                              textAlign: TextAlign.end,
                              style: const TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Almarai',
                              ),
                            ),
                            onExpansionChanged: ((newState) {
                              data[0].isExpanded = false;
                              if (newState) {
                                setState(() {
                                  selected = i;
                                });
                              } else {
                                setState(() {
                                  selected = -1;
                                });
                              }
                            }),
                            children: [
                              Container(
                                color: Colors.white,
                                child: ListTile(
                                  title: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 3, 0, 5),
                                    child: Container(
                                      // decoration: new BoxDecoration (
                                      //   color: Colors.white,
                                      //   borderRadius: BorderRadius.only(
                                      //       topLeft: Radius.circular(10),
                                      //       topRight: Radius.circular(10),
                                      //       bottomLeft: Radius.circular(10),
                                      //       bottomRight: Radius.circular(10)
                                      //   ),
                                      //   boxShadow: [
                                      //     BoxShadow(
                                      //       color: Color(0xff720c47),
                                      //       spreadRadius: 2,
                                      //       blurRadius: 3,
                                      //       offset: Offset(0, 3), // changes position of shadow
                                      //     ),
                                      //   ],
                                      // ),
                                      child: Image.asset(
                                        data[i].imagePath,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FloatingActionButton.extended(
                onPressed: () async {
                  launch('tel://$number');
                },
                backgroundColor: const Color(0xff720c47),
                hoverColor: Colors.orange,
                splashColor: Colors.purple,
                elevation: 12,
                hoverElevation: 50,
                tooltip: 'اتصل الان',
                label: Text(
                  "$number",
                  style: const TextStyle(fontSize: 18),
                ),
                icon: Image.asset(
                  "assets/phone.png",
                  width: 28,
                  height: 28,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

// _Product_ExpandAble_List_Builder(int cat_id) {
//   // List<Widget> columnContent = [];
//   [1,].forEach((product) =>
//   {
//     columnContent.add(
//       ListTile(
//         title: ExpansionTile(
//           title: Padding(
//             padding: const EdgeInsets.fromLTRB(10, 3, 10, 20),
//             child: Container(
//               // decoration: new BoxDecoration (
//               //   color: Colors.white,
//               //   borderRadius: BorderRadius.only(
//               //       topLeft: Radius.circular(10),
//               //       topRight: Radius.circular(10),
//               //       bottomLeft: Radius.circular(10),
//               //       bottomRight: Radius.circular(10)
//               //   ),
//               //   boxShadow: [
//               //     BoxShadow(
//               //       color: Color(0xff720c47),
//               //       spreadRadius: 2,
//               //       blurRadius: 3,
//               //       offset: Offset(0, 3), // changes position of shadow
//               //     ),
//               //   ],
//               // ),
//               child: Image.asset( data[cat_id].imagePath,),
//             ),
//           ),
//         ),
//
//       ),
//
//     ),
//   });
//   return columnContent;
// }
}
