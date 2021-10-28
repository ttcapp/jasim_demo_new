import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}
List<String> stName=[
  "Jasim",
  "Masum",
  "Jakariya",
  "Imran",
  "Alamin",
  "Bisnu"
];

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ThirdPage"),

      ),
      body: Center(
        child: Column(
          children: [
            Text("The name of Jasim"),
            Expanded(
              child: ListView.builder(
                itemCount: stName.length,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(stName[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20,
                      color: Colors.purpleAccent),),
                    );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}





