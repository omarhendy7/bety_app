import 'package:bety_main_app/user_interface/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:bety_main_app/componets/reusable_card.dart';
import 'package:getflutter/types/gf_button_type.dart';
import 'login_screen.dart';
import 'package:bety_main_app/screens/Shop.dart';
import 'package:bety_main_app/screens/Labor.dart';
import 'package:getflutter/getflutter.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List gfComponents = [
  {
    'icon': Icons.shop,
    'title': 'Shop',
    'route': Shop()
  },
{
'icon': Icons.group,
'title': 'Labor',
'route': Labor()
},
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'Bety app',
        ),
        centerTitle: true,
      ),

      //drawer: DrawerPage(),
      body: ListView(
        physics: const ScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(
                left: 15, bottom: 20, top: 20, right: 15),
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: gfComponents.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemBuilder: (BuildContext context, int index) =>
                    GestureDetector(
                        onTap: () {},
                        child: buildSquareTile(
                            gfComponents[index]['title'],
                            gfComponents[index]['icon'],
                            gfComponents[index]['route']))),
          ),
          // Container(
          //   height: 160,
          //   margin: const EdgeInsets.only(left: 15, bottom: 20, right: 15),
          //   child: buildSquareTile(
          //       'Progress Bar',
          //       const IconData(
          //         0xe900,
          //         fontFamily: 'GFIcons',
          //       ),
          //       ProgressBar()),
          // )
        ],
      ),
    );
  }
  Widget buildSquareTile(String title, IconData icon, Widget route) => InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) => route),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        color: const Color(0xFF333333),
        borderRadius: const BorderRadius.all(Radius.circular(7)),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.61),
              blurRadius: 6,
              spreadRadius: 0),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            icon,
            color: GFColors.SUCCESS,
            size: 30,
          ),
//            Icon((icon),),
          Text(
            title,
            style: const TextStyle(color: GFColors.WHITE, fontSize: 20),
          )
        ],
      ),
    ),
  );
}
