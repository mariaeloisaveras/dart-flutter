import 'package:bitebank/screens/contacts_list.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool _click = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Dashboard',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              'https://exame.com/wp-content/uploads/2020/02/banco_bv_0220.jpg',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Theme.of(context).primaryColor,
              // child: InkWell(
              //   onTap: () {
              //     Navigator.of(context).push(MaterialPageRoute(
              //       builder: (context) => ContactsList(),
              //     ));
              //   },
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _click = !_click;
                  });
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ContactsList(),
                  ));
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 150),
                  padding: EdgeInsets.all(8.0),
                  width: _click ? 150 : 155,
                  height: _click ? 100 : 105,
                  // curve: Curves.easeInCirc,
                  color: _click
                      ? Theme.of(context).accentColor
                      : Theme.of(context).primaryColor,
                  onEnd: () {
                    setState(() {
                      _click = false;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.people,
                        color: Colors.white,
                        size: 40,
                      ),
                      Text(
                        'Pessoas',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              // ),
            ),
          )
        ],
      ),
    );
  }
}
