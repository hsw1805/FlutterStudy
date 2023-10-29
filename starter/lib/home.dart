import 'package:flutter/material.dart';

import 'card1.dart';
import 'card2.dart';
import 'card3.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
    Card1(),      //build함수 자동 호출 됨
    Card2(),
    Card3(),
  ];

  void _onItemClick(int index){
    _selectedIndex = index;
    print(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: Style the title
      appBar: AppBar(
          title: Text(
              'Fooderlich',
            style: Theme.of(context).textTheme.bodyText1,
          )),
      // TODO: Style the body text
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemClick,
        currentIndex:_selectedIndex ,
        items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label:'Card',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label:'Card2',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),

    );
  }
  
}