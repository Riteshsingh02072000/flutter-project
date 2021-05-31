import 'package:flutter/material.dart';

class VenderLogin extends StatefulWidget {
  const VenderLogin({Key key}) : super(key: key);

  @override
  _VenderLoginState createState() => _VenderLoginState();
}

class _VenderLoginState extends State<VenderLogin> {
  @override
  Widget build(BuildContext context) {
    var  screenWidth = MediaQuery.of(context).size.width;
    var  screenHeight = MediaQuery.of(context).size.height;
    var blockSizeHorizontal = (screenWidth/100);
    var blocksizeVertical = (screenHeight/100);
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: ListView(
              children: <Widget>[
                Image.asset('images/sail.png',width: 150,height: 150),

                Container(
                  alignment: Alignment.center,
                  height: blocksizeVertical*20,
                  width: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
