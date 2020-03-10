import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) => GFDrawer(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: const [Color(0xFFD685FF), Color(0xFF7466CC)])),
              height: 250,
              child: GFDrawerHeader(
                closeButton: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    CupertinoIcons.back,
                    color: GFColors.SUCCESS,
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: const [Color(0xFFD685FF), Color(0xFF7466CC)],
                  ),
                ),
                otherAccountsPictures: <Widget>[
                  GFAvatar(
                    backgroundColor: Colors.green,
                    child: const Text('G'),
                  ),
                  const GFAvatar(
                    backgroundColor: Colors.black,
                    child: Text('F'),
                  ),
                ],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const GFAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        'lib/assets/images/gflogo.png',
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'My Account', //to be changes with the actual account name
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'account@email',// to be changed with the account email
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              color: Colors.white,
              child: Column(
                children: <Widget>[

                  InkWell(
                    onTap: () {
//                      Navigator.push(
//                        context,
//                        MaterialPageRoute(
//                          builder: (BuildContext context) => const WebViews(
//                              url: 'https://docs.getflutter.dev/'),
//                        ),
//                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 2),
                      child: GFListTile(
                        title: Text(
                            'account item1',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black87)),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
//                      Navigator.push(
//                        context,
//                        MaterialPageRoute(
//                          builder: (BuildContext context) => const WebViews(
//                              url: 'https://www.getflutter.dev/features'),
//                        ),
//                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 2),
                      child: GFListTile(
                        title: Text('account item2',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black87)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
