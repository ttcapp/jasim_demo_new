import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  final Function(String) onItemClick;

  const MenuWidget({Key? key, required this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _heightOnly=MediaQuery.of(context).size.height;
    double _widthOnly=MediaQuery.of(context).size.width;
    return Container(
      color: Colors.orange.shade100,
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: _heightOnly*0.045,
          ),
          CircleAvatar(
            radius: 65,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/image/avater1.png'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Creator',
            style: TextStyle(
              color: Colors.teal,
              fontWeight: FontWeight.bold,
              fontSize: _widthOnly*0.04,
              fontFamily: 'BalsamiqSans',),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 40.0),
              child: Text(
                'Jannat Suha',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  fontSize: _widthOnly*0.06,
                  fontFamily: 'BalsamiqSans',),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          sliderItem('Friend Lists', Icons.people),
          sliderItem('Notification', Icons.notifications_active),
          sliderItem('List Show', Icons.save_alt),
          sliderItem('Setting', Icons.settings),
          sliderItem('LogOut', Icons.arrow_back_ios)
        ],
      ),
    );
  }

  Widget sliderItem(String title, IconData icons) => ListTile(
      title: Text(
        title,
        style:
        TextStyle(color: Colors.black, fontFamily: 'BalsamiqSans_Regular'),
      ),
      leading: Icon(
        icons,
        color: Colors.black,
      ),
      onTap: () {
        onItemClick(title);
      });
}