
import 'package:flutter/material.dart';

const PrimaryColor = Color(0xffff8227);
const SecondaryColor = Color(0xffbcbcbc);
const PrimaryText = Color(0xffe6e6e6);
const FontColor = Color(0xff979797);

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

BottomNavigationBar menuInferior() {
  return BottomNavigationBar(
    selectedItemColor: PrimaryColor,
    items: [
      BottomNavigationBarItem(
          icon: Icon(Icons.warning), title: Text('Ocorrências')),
      BottomNavigationBarItem(
          icon: Icon(Icons.subdirectory_arrow_left),
          title: Text('Devolver veículo')),
      BottomNavigationBarItem(
        icon: Icon(Icons.credit_card),
        title: Text('Saldo Cartão Combustível'),
      )
    ],
  );
}
Text titulochecklist() {
    return Text(
                  "Checklist de Retirada de Veículos",
                  style: TextStyle(
                    color: FontColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                );
  }