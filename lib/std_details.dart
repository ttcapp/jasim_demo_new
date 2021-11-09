import 'package:jasim_demo/student_model.dart';
import 'package:flutter/material.dart';

class StdDetails extends StatefulWidget {
  StudentDetails stdObj;
  String img;
  StdDetails({Key? key,required this.stdObj,
    required this.img}) :super(key: key);

  @override
  _StdDetailsState createState() => _StdDetailsState();
}

class _StdDetailsState extends State<StdDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Student Details"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(widget.img),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Text("Name: ",
                    style: TextStyle(
                        color: Colors.green,fontSize: 30
                    ),),
                  Text(widget.stdObj.name,
                    style: TextStyle(
                        color: Colors.green,fontSize: 30
                    ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(widget.stdObj.id,
                style: TextStyle(
                    color: Colors.green,fontSize: 30
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(widget.stdObj.age,
                style: TextStyle(
                    color: Colors.green,fontSize: 30
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(widget.stdObj.address,
                style: TextStyle(
                    color: Colors.green,fontSize: 30
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(widget.stdObj.number,
                style: TextStyle(
                    color: Colors.green,fontSize: 30
                ),),
            ),
            ElevatedButton(
                onPressed: (){

                },
                child: Text("jdfhcdjskkfh")
            )
          ],
        ),
      ),
    );
  }
}