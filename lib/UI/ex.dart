import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home.dart';

class ExpandableWidget extends StatefulWidget {
  @override
  _ExpandableWidgetState createState() => _ExpandableWidgetState();
}

class _ExpandableWidgetState extends State<ExpandableWidget> {
  List<Item> _data = generateItems();
  final number = '16474';
  int _selectedIndex = -1;
  late List<GlobalKey> extensionTitle;
  int? selected;

  @override
  void initState() {
    extensionTitle = List<GlobalKey<_ExpandableWidgetState>>.generate(_data.length, (index) => GlobalKey());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
      return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));

        return Future.value(true);
      },
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('Expandable View'),
        // ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 50, 8, 8),
            child: Container (
                  color: Colors.white,
              // decoration: new BoxDecoration (

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

              child: _buildPanel(),
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
                  backgroundColor: Color(0xff720c47),
                  hoverColor: Colors.orange,
                  splashColor: Colors.purple,
                  elevation: 12,
                  hoverElevation: 50,
                  tooltip: 'اتصل الان',


                  label: Text("$number",style: TextStyle(fontSize: 18),),
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

  Widget _buildPanel() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: new BoxDecoration (
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xff720c47),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),

        child: ClipRRect(
          borderRadius: BorderRadius.circular(7.0),
          child: ExpansionPanelList(

            expansionCallback: (int index, bool isExpanded) {
              setState(() {


                // if (_data[index].expandedValue == 1)
                //   setState(() {
                //     _data[index].isExpanded = !isExpanded;
                //   });
                // else if(_data[index].expandedValue == 2)
                //   setState(() {
                //     _data[index].isExpanded =! isExpanded;
                //   });


                //
                if( _data[0].isExpanded == false){
                  setState(() {
                    _data[0].isExpanded = true;
                    _data[1].isExpanded = false;
                    _data[2].isExpanded = false;
                    _data[3].isExpanded = false;
                    _data[4].isExpanded = false;
                    _data[5].isExpanded = false;
                    _data[6].isExpanded = false;
                  });


                }else if(_data[0].isExpanded == true){
                  setState(() {
                    _data[0].isExpanded = false;
                    _data[1].isExpanded = false;
                    _data[2].isExpanded = false;
                    _data[3].isExpanded = false;
                    _data[4].isExpanded = false;
                    _data[5].isExpanded = false;
                    _data[6].isExpanded = false;
                    // _data[7].isExpanded = false;
                  });
                }else if( _data[1].isExpanded == false){
                  setState(() {
                    _data[0].isExpanded = false;
                    _data[1].isExpanded = true;
                    _data[2].isExpanded = false;
                    _data[3].isExpanded = false;
                    _data[4].isExpanded = false;
                    _data[5].isExpanded = false;
                    _data[6].isExpanded = false;
                  });


                }else if(_data[1].isExpanded == true){
                  setState(() {
                    _data[0].isExpanded = false;
                    _data[1].isExpanded = false;
                    _data[2].isExpanded = false;
                    _data[3].isExpanded = false;
                    _data[4].isExpanded = false;
                    _data[5].isExpanded = false;
                    _data[6].isExpanded = false;
                    // _data[7].isExpanded = false;
                  });
                }

                // if( _data[1].isExpanded == false){
                //   setState(() {
                //     _data[0].isExpanded = false;
                //     _data[1].isExpanded = true;
                //     _data[2].isExpanded = false;
                //     _data[3].isExpanded = false;
                //     _data[4].isExpanded = false;
                //     _data[5].isExpanded = false;
                //     _data[6].isExpanded = false;
                //   });
                //
                //
                // }else if(_data[1].isExpanded == true){
                //   setState(() {
                //     _data[0].isExpanded = false;
                //     _data[1].isExpanded = false;
                //     _data[2].isExpanded = false;
                //     _data[3].isExpanded = false;
                //     _data[4].isExpanded = false;
                //     _data[5].isExpanded = false;
                //     _data[6].isExpanded = false;
                //     // _data[7].isExpanded = false;
                //   });
                // }
                // else{
                //   _selectedIndex = isExpanded ? -1 : index;
                // }
                // if(  _data[index].isExpanded == true){
                //   _data[index].isExpanded = !isExpanded;
                // }else{
                //
                //   _data[index].isExpanded = true;
                //   // _selectedIndex = isExpanded ? -1 : index;
                // }


                // _selectedIndex = isExpanded ? -1 : index;

              });
            },
            dividerColor: Colors.white,
            elevation:8,
            expandedHeaderPadding: EdgeInsets.all(5.0),
            animationDuration: kThemeAnimationDuration,








            children: _data.map<ExpansionPanel>((Item item) {
              return ExpansionPanel(



                canTapOnHeader: true,
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return  ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: ListTile(
                      // trailing: null,
                      tileColor: Color(0xff720c47),

                      // tileColor: Colors.blue,
                      // hoverColor: Color(0xff720c47),
                      // splashColor: Color(0xff720c47),
                      leading: Image.asset(
                        item.iconPath,
                        width: 32,
                        height: 32,
                        color: Colors.amber,
                      ),
                      title: Text(
                        item.headerValue,
                          textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Almarai',
                        ),
                      ),
                      trailing: null
                    ),
                  );
                },
                body: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 3, 10, 20),
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
                    child: Image.asset(item.imagePath),
                  ),
                ),
                isExpanded: item.isExpanded,

              );
            }).toList(),

          ),
        ),
      ),
    );
  }

  //title: Text(item.headerValue,textAlign: TextAlign.end,),

  static List<Item> generateItems() {
    return [
      Item(
        expandedValue:1,
        headerValue: 'أنواع الذبحة الصدرية',
        imagePath: 'assets/Group45.png',
        isExpanded: false,
        iconPath: "assets/TypesOf Angina.png",
      ),
      Item(
        expandedValue:2,
        headerValue: 'الذبحة الصدرية لدى النساء',
        imagePath: 'assets/Group46.png',
        isExpanded: false,
        iconPath: "assets/AnginaPectorisInWomen.png",
      ),
      Item(
        expandedValue:3,
        headerValue: 'الأسباب',
        imagePath: 'assets/Group48.png',
        isExpanded: false,
        iconPath: "assets/reasons.png",
      ),
      Item(
        expandedValue:4,
        headerValue: 'متى تزور الطبيب ؟',
        imagePath: 'assets/Group47.png',
        isExpanded: false,
        iconPath: "assets/WhenDoYouSee Adoctor.png",
      ),
      Item(
        expandedValue:5,
        headerValue: 'المضاعفات',
        imagePath: 'assets/Group49.png',
        isExpanded: false,
        iconPath: "assets/complications.png",
      ),
      Item(
        expandedValue:6,
        headerValue: 'عوامل الخطر',
        imagePath: 'assets/Group50.png',
        isExpanded: false,
        iconPath: "assets/riskFactors.png",
      ),
      Item(
        expandedValue:7,
        headerValue: 'طرق الوقاية',
        imagePath: 'assets/3ex.png',
        isExpanded: false,
        iconPath: "assets/heartinhand.png",
      ),

    ];
  }
}

class Item {

  String headerValue;
  String imagePath;
  String iconPath;
  bool isExpanded;
  int? expandedValue;

  Item({required this.expandedValue,required this.headerValue, required this.imagePath, required this.iconPath, this.isExpanded = false});
}