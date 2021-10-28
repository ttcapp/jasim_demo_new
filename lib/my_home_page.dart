import 'package:flutter/material.dart';
import 'package:jasim_demo/second_page.dart';
import 'package:jasim_demo/third_page.dart';
import 'package:jasim_demo/utills/all_colors.dart';
import 'package:jasim_demo/utills/all_string.dart';
import 'package:slide_drawer/slide_drawer.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
String jasimimgsrc="https://cdn.pixabay.com/photo/2020/07/14/13/07/icon-5404125_1280.png";
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          // call toggle from SlideDrawer to alternate between open and close
          // when pressed menu button
          onPressed: () => SlideDrawer.of(context)!.toggle(),
        ),
        centerTitle: true,
        backgroundColor: AllColors.appBarClkr,
        title: Text(AllString.Jasim),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/image2.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black87.withOpacity(0.5), BlendMode.dstATop)
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>ThirdPage()));
                    },
                    child: Text("button two")),

                Padding(
                  padding: const EdgeInsets.only(
                    top: 5, bottom: 5,left: 25,right: 25
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: width*0.25,
                        width: width*0.25,

                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(jasimimgsrc)

                          ),
                          borderRadius: BorderRadius.circular(180),


                          border: Border.all(width: 3, color: Colors.deepOrange
                          )
                        ),
                      ),
                   Expanded(
                     child: Column(
                       children: [
                         Row(
                           children: [
                             Spacer(),
                           Column(
                            children: [
                              Text(AllString.post3405,style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),
                              Text(AllString.post),
                            ],
                          ) ,
                             Spacer(),
                             Column(
                               children: [
                                 Text(AllString.follower6k,style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 20,
                                   fontWeight: FontWeight.bold,
                                 ),),
                                 Text(AllString.followers),
                               ],
                             ) ,
                             Spacer(),
                             Column(
                               children: [
                                 Text(AllString.following246,style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 20,
                                   fontWeight: FontWeight.bold,
                                 ),),
                                 Text("Following"),
                               ],
                             ) ,
                             Spacer(),
                           ],
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Row(
                             children: [
                               Spacer(),
                               Container(
                                 child:Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text(AllString.message),
                                 ),
                                 decoration: BoxDecoration(
                                   border: Border.all(
                                     color: Colors.green
                                   )
                                 ),
                               ),
                               Spacer(),
                               Container(
                                 child:Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Icon(Icons.account_circle,
                                   size: 15,),
                                 ),
                                 decoration: BoxDecoration(
                                     border: Border.all(
                                         color: Colors.green
                                     )
                                 ),
                               ),
                               Spacer(),
                             ],
                           ),
                         ),
                       ],
                     ),
                   )
                    ],
                  ),
                ),
               
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder:
                      (context)=>SecondPage()));
                    },
                    child: Text(AllString.goToNextPage)

                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
