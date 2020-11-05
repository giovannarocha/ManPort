import 'package:flutter/material.dart';

import '../../constants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: appBar(),
      body: body(),
      bottomNavigationBar: menuInferior(),
    );
  }

  body() {
    return Container(
      height: MediaQuery.of(context).size.height - 50,
      child: ListView(
        primary: false,
        padding: EdgeInsets.only(left: 25, right: 20),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 45),
            child: Container(
              height: MediaQuery.of(context).size.height - 50,
              child: ListView(
                children: <Widget>[
                  _buildCardPrincipal(Icons.local_gas_station,
                      "Próxima troca de óleo", "3000 km", "Mais informações"),
                  SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Color(0x70616161),
                    thickness: 1,
                    height: 30.0,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  _buildCardPrincipal(Icons.local_gas_station, "Quilometragem",
                      "15000 km", "Mais informações"),
                  SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Color(0x70616161),
                    thickness: 1,
                    height: 30.0,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  _buildCardPrincipal(
                      Icons.local_gas_station,
                      "Vencimento do contrato",
                      "05/05/2021",
                      "Mais informações"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildCardPrincipal(
    IconData icone, String texto, String info, String txtinfo) {
  return Container(
    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[ 
              Text(
                texto,
                style: TextStyle(
                  color: Color(0xff979797),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Row(
                children: <Widget>[
                  Hero(
                    tag: icone,
                    child: Icon(
                      icone,
                      size: 55,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        info,
                        style: TextStyle(
                          color: PrimaryColor,
                          fontSize: 25,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: PrimaryColor,
                            size: 30,
                          ),
                          Text(
                            txtinfo,
                            style: TextStyle(
                              color: Color(0xff979797),
                              fontSize: 20,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}
