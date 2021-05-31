import 'package:bspapp/screens/gatepassgenerate.dart';
import 'package:bspapp/screens/vehiclepass.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

int counter = 0;
class GatePassInfo extends StatefulWidget {
  const GatePassInfo({Key key}) : super(key: key);

  @override
  _GatePassInfoState createState() => _GatePassInfoState();
}

class _GatePassInfoState extends State<GatePassInfo> {

  String valueChoose;
  List listitem = ["Authorised Representative 1","Authorised Representative 2","Authorised Representative 3"];
  List vehicletype = ["Vehicle Type 1","Vehicle Type 2","Vehicle Type 3"];
  @override
  Widget build(BuildContext context) {
    var  screenWidth = MediaQuery.of(context).size.width;
    var  screenHeight = MediaQuery.of(context).size.height;
    var blockSizeHorizontal = (screenWidth/100);
    var blocksizeVertical = (screenHeight/100);
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color(0xFF051955),
        title: Text('Gate Pass Info',
        style: TextStyle(fontSize: 26,color: Colors.white),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black)
                      ),
                      width: blockSizeHorizontal*40,
                      child: Text('Authorised Representatives',
                      style: TextStyle(
                        fontSize: 18,
                      ),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: blockSizeHorizontal*40,
                      child: DropdownButton(
                        hint: Text('Select Authorised Representative'),
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
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: blockSizeHorizontal*40,
                      child: Text('Tons:',
                        style: TextStyle(
                          fontSize: 22,
                        ),),
                    ),
                  ),
                  Container(
                    width: blockSizeHorizontal*40,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: blockSizeHorizontal*40,
                      child: Text('Vehicle Type:',
                        style: TextStyle(
                          fontSize: 22,
                        ),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: blockSizeHorizontal*40,
                      child: DropdownButton(
                        hint: Text('Select Vehicle Type'),
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
                        items: vehicletype.map((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                          );

                        }).toList(),

                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: blockSizeHorizontal*40,
                      child: Text('Vehicle Number:',
                        style: TextStyle(
                          fontSize: 22,
                        ),),
                    ),
                  ),
                  Container(
                    width: blockSizeHorizontal*40,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: blockSizeHorizontal*40,
                      child: Text('Driving License No.:',
                        style: TextStyle(
                          fontSize: 22,
                        ),),
                    ),
                  ),
                  Container(
                    width: blockSizeHorizontal*40,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: blockSizeHorizontal*40,
                      child: Text('Driver\'s Name:',
                        style: TextStyle(
                          fontSize: 22,
                        ),),
                    ),
                  ),
                  Container(
                    width: blockSizeHorizontal*40,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: blockSizeHorizontal*40,
                      child: Text('Driver\'s Age:',
                        style: TextStyle(
                          fontSize: 22,
                        ),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      width: blockSizeHorizontal*40,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: blockSizeHorizontal*40,
                      child: Text('Number Of Helpers:',
                        style: TextStyle(
                          fontSize: 22,
                        ),),
                    ),
                  ),
                  Container(
                    width: blockSizeHorizontal*40,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: blocksizeVertical*5,
                width: blockSizeHorizontal*22,
                color: Color(0xFF051955),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF051955),
                  ),
                  child: Text('Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: (){
                    setState(() {
                      counter++;
                      print('$counter');
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>GatePassInfo()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  alignment: Alignment.center,
                  height: blocksizeVertical*5,
                  width: blockSizeHorizontal*60,
                  // color: Color(0xFF051955),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                    ),
                    child: Text('Add Another Vehicle',
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
              ),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.,
                children: <Widget>[
                  Expanded(
                    // alignment: Alignment.topRight,
                    // height: blocksizeVertical*5,
                    // width: blockSizeHorizontal*22,
                    // color: Color(0xFF051955),
                    child: Padding(
                      padding: const EdgeInsets.only(left:20.0, right: 20.0),
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
                  ),
                  Expanded(
                    // alignment: Alignment.topLeft,
                    // height: blocksizeVertical*5,
                    // width: blockSizeHorizontal*22,
                    // color: Color(0xFF051955),
                    child: Padding(
                      padding: const EdgeInsets.only(left:20.0, right:20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF051955),
                        ),
                        child: Text('Next',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>VehiclePass()));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
