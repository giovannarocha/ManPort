import 'dart:async';

import 'package:flutter/material.dart';
import 'package:manserv_app/base/stores/storechecklist_page2.dart';

import '../../constants.dart';

class ChecklistPage2 extends StatefulWidget {
  @override
  _ChecklistPage2State createState() => _ChecklistPage2State();
}

class _ChecklistPage2State extends State<ChecklistPage2> {
  var likeController = StoreChecklistPage2();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: appBar(),
      body: body(size, context),
    );
  }

  body(size, context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 15),
            child: titulochecklist(),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: PrimaryColor,
            height: 10,
          ),
          _nomecondutor('José Dias da Silva '),
          Divider(
            color: PrimaryColor,
            height: 10,
          ),
          _dadosveiculo('KGP-1316'),
          Divider(
            color: PrimaryColor,
            height: 10,
          ),
          Container(
            width: size.width * 0.8,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: PrimaryColor)),
            padding: EdgeInsets.only(top: 15, bottom: 15, left: 5, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset('assets/icons/like.png'),
                Text('Sem Avarias'),
                SizedBox(
                  width: 20,
                ),
                Image.asset('assets/icons/dislike.png'),
                Text('Avariado ou Ausente'),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Itens do veículo',
            style: TextStyle(
              color: FontColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              child: ListView(
                children: <Widget>[
                  _itensdoveiculo('Macaco'),
                  Divider(
                    height: 10,
                    color: PrimaryColor,
                  ),
                  _itensdoveiculo('Estepe'),
                  Divider(
                    height: 10,
                    color: PrimaryColor,
                  ),
                  _itensdoveiculo('Chave de Roda'),
                  Divider(
                    height: 10,
                    color: PrimaryColor,
                  ),
                  _itensdoveiculo('Triângulo'),
                  Divider(
                    height: 10,
                    color: PrimaryColor,
                  ),
                  _itensdoveiculo('Rádio'),
                  Divider(
                    height: 10,
                    color: PrimaryColor,
                  ),
                  _itensdoveiculo('Antena'),
                  Divider(
                    height: 10,
                    color: PrimaryColor,
                  ),
                  _itensdoveiculo('Acendedor'),
                  Divider(
                    height: 10,
                    color: PrimaryColor,
                  ),
                  _itensdoveiculo('Tapetes'),
                  Divider(
                    height: 10,
                    color: PrimaryColor,
                  ),
                  _itensdoveiculo('Calotas'),
                  Divider(
                    height: 10,
                    color: PrimaryColor,
                  ),
                  _itensdoveiculo('Extintor'),
                  Divider(
                    height: 10,
                    color: PrimaryColor,
                  ),
                  _itensdoveiculo('Manual'),
                  Divider(
                    height: 10,
                    color: PrimaryColor,
                  ),
                  _itensdoveiculo('Ar Condicionado'),
                  Divider(
                    height: 10,
                    color: PrimaryColor,
                  ),
                  _itensdoveiculo('CRLV (Documento)'),
                  Divider(
                    height: 10,
                    color: PrimaryColor,
                  ),
                  _itensdoveiculo('Chave Reserva'), 
                  Divider(
                    height: 10,
                    color: PrimaryColor,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _nomecondutor(String nomecondutor) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Text(
                'Nome do Condutor: ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: FontColor,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  nomecondutor,
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.add,
              color: PrimaryColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _dadosveiculo(String nomecondutor) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Text(
                'Placa: ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: FontColor,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  nomecondutor,
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.add,
              color: PrimaryColor,
            ),
          ),
        ],
      ),
    );
  }

  _itensdoveiculo(String nomeitem) {
    Color colorLike = Colors.white;
    Color colorDislike = Colors.white;
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            nomeitem,
            style: TextStyle(
              color: FontColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: colorLike,
                    border: Border.all(width: 1, color: FontColor)),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      colorLike = Colors.green;
                      colorDislike = Colors.white;
                      print("teste");
                    });
                  },
                  child: Image.asset('assets/icons/like.png'),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: colorDislike,
                  border: Border.all(width: 1, color: FontColor),
                ),
                child: GestureDetector(
                  onTap: () =>
                    setState(() {
                      colorLike = Colors.white;
                      colorDislike = Colors.red;
                    })
                  ,
                  child: Image.asset('assets/icons/dislike.png'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
