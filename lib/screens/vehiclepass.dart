import 'package:bspapp/screens/gatePassInfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'gatePassInfo.dart';
class VehiclePass extends StatefulWidget {
  const VehiclePass({Key key}) : super(key: key);

  @override
  _VehiclePassState createState() => _VehiclePassState();
}

class _VehiclePassState extends State<VehiclePass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF051955),
        title: Text('Vehicle Pass',
        style: TextStyle(
          fontSize: 25
        ),
        ),
      ),
      body: ListView.builder(
        itemCount: counter,
        itemBuilder: (context, index)
        {
          return ListTile(
            title: Text('${index+1}.Vehicle Pass'),
            trailing: Icon(Icons.download_sharp),

          );
        },
       ),
    );
  }
}
