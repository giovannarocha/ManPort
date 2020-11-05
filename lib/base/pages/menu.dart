import 'package:flutter/material.dart';
import 'package:manserv_app/constants.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                height: 70.0,
              ),
              Container(
                padding: EdgeInsets.only(right: 10.0),
                child: Icon(
                  Icons.chat_bubble_outline,
                  size: 45.0,
                ),
              )
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Center(
            child: Column(
              children: <Widget>[
                const Divider(
                  color: Color(0x70616161),
                  thickness: 1,
                  height: 30.0,
                ),
                Text(
                  'Veículos a Retirar',
                  style: TextStyle(
                    color: Color(0xff616161),
                    fontSize: 18,
                  ),
                ),
                const Divider(
                  color: Color(0x70616161),
                  thickness: 1,
                  height: 30.0,
                ),
                Text(
                  'Veículos a Devolver',
                  style: TextStyle(
                    color: Color(0xff616161),
                    fontSize: 18,
                  ),
                ),
                const Divider(
                  color: Color(0x70616161),
                  thickness: 1,
                  height: 30.0,
                ),
                Text(
                  'Realizar Checklist',
                  style: TextStyle(
                    color: Color(0xff616161),
                    fontSize: 18,
                  ),
                ),
                const Divider(
                  color: Color(0x70616161),
                  thickness: 1,
                  height: 30.0,
                ),
                Text(
                  'Ocorrências',
                  style: TextStyle(
                    color: Color(0xff616161),
                    fontSize: 18,
                  ),
                ),
                const Divider(
                  color: Color(0x70616161),
                  thickness: 1,
                  height: 30.0,
                ),
                Text(
                  'Saldo Cartão Combustível',
                  style: TextStyle(
                    color: Color(0xff616161),
                    fontSize: 18,
                  ),
                ),
                const Divider(
                  color: Color(0x70616161),
                  thickness: 1,
                  height: 30.0,
                ),
                Text(
                  'Histórico',
                  style: TextStyle(
                    color: Color(0xff616161),
                    fontSize: 18,
                  ),
                ),
                const Divider(
                  color: Color(0x70616161),
                  thickness: 1,
                  height: 30.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  SizedBox sizedPadding() {
    return SizedBox(
      height: 15.0,
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: PrimaryColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'assets/img/logo.png',
            height: 50.0,
            alignment: Alignment.centerLeft,
          ),
          Container(
            child: Icon(
              Icons.dehaze,
            ),
          ),
        ],
      ),
    );
  }
}
