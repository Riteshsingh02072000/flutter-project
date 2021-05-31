import 'package:bspapp/screens/gatePassInfo.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GatePass extends StatefulWidget {
  const GatePass({Key key}) : super(key: key);

  @override
  _GatePassState createState() => _GatePassState();
}

class _GatePassState extends State<GatePass> {
  String valueChoose;
  List listitem = ["Area Pass 1", "Area Pass 2","Area Pass 3"];
  @override
  Widget build(BuildContext context) {
    var  screenWidth = MediaQuery.of(context).size.width;
    var  screenHeight = MediaQuery.of(context).size.height;
    var blockSizeHorizontal = (screenWidth/100);
    var blocksizeVertical = (screenHeight/100);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF051955),
        title: Text('Gate Pass Generator',
        style: TextStyle(
          fontSize: 25,
          color: Colors.white
        ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset('images/sail.png',
              width: blockSizeHorizontal*40,
              height: blocksizeVertical*25,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                width: blockSizeHorizontal*78,
                height: blocksizeVertical*7,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton(
                    hint: Text('Area Pass Avaibality'),
                    icon: Icon(Icons.arrow_drop_down),
                    isExpanded: true,
                    underline: SizedBox(),
                    value: valueChoose,
                    onChanged: (newValue)
                    {
                      setState(() {
                        valueChoose = newValue;
                      });
                    },
                    items: listitem.map((valueItem) {
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem),
                      );

                    }).toList(),
                  ),
                ),
              ),
              Container(
                color: Color(0xFF051955),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF051955),
                  ),
                  child: Text('Generate New GatePass',
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  ),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>GatePassInfo()));
                  },
                ),
              ),
              Container(
                color: Color(0xFF051955),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF051955),
                  ),
                  child: Text('View Old GatePass',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>GatePass()));
                  },
                ),
              ),

                  Container(
                    alignment: Alignment.bottomLeft,
                    height: blocksizeVertical*4,
                    width: blockSizeHorizontal*22,
                    color: Color(0xFF051955),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF051955),
                      ),
                      child: Text('Back',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>GatePass()));
                      },
                    ),
                  ),
            ],
          ),

      ),
    );
  }
}
