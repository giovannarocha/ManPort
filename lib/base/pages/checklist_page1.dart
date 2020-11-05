import 'package:flutter/material.dart';

import '../../constants.dart';

class Checklistpage1 extends StatefulWidget {
  @override
  _Checklistpage1State createState() => _Checklistpage1State();
}

class _Checklistpage1State extends State<Checklistpage1> {
  @override
  Widget build(BuildContext context) {


    Size size = MediaQuery.of(context).size;




    return Scaffold(
      appBar: appBar(),
      body: 
        Container(

            width: size.width,
            child: Column(
              children: <Widget> [
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 15),
                  child: titulochecklist(),
                ),
                SizedBox(height: 40,),
                Container(
                  alignment: Alignment.topCenter,
                  child: GestureDetector( 
                    child: Column(
                      children: <Widget> [
                        Text('Envie a foto da placa do veículo',
                        style: TextStyle(
                          fontSize: 19,
                          color: FontColor,
                          fontWeight: FontWeight.w600
                        ),
                        ),
                        SizedBox(height: 45,),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Icon(Icons.add_a_photo_outlined, color: PrimaryColor, size: 45,),
                         decoration: BoxDecoration(
                           border: Border.all(width: 1, color: FontColor)
                         ), 
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                 const Divider(
                    color: PrimaryColor,
                    thickness: 1,
                    height: 30.0,
                  ),
              Expanded(
                              child: Container(
                  height: MediaQuery.of(context).size.height, 
                    child:
                      ListView(
                        children: <Widget> [
                          _historico('Retirada de veículo', '05/05/2021', '10:53', 'XFG-5960'),
                          _historico('Devolução de veículo', '17/03/2021', '10:53', 'OPB-5963'),
                          _historico('Ocorrência', '05/05/2021', '10:53', 'OPB-5963'),
                          _historico('Devolução de veículo', '28/07/2021', '10:53', 'KBJ-3652'),
                          _historico('Retirada de veículo', '05/07/2021', '10:53', 'OPB-5963'),
                          _historico('Ocorrência', '05/05/2021', '10:53', 'OPB-5963'),
                          _historico('Retirada de veículo', '05/05/2021', '10:53', 'OPB-5963'),
                          _historico('Devolução de veículo', '05/05/2021', '10:53', 'OPB-5963'),
                          _historico('Devolução', '05/05/2021', '10:53', 'OPB-5963'),
                          _historico('Retirada de veículo', '05/05/2021', '10:53', 'OPB-5963')
                        ],
                      ),
                    
                  ),
              ),
                ]
            ),
          )
          );
        

          
        }

  
      
       
 

}


Widget _historico(String tipo, String data, String hora, String placa){
  return Container(
    margin: EdgeInsets.only(left: 20, right: 20),
    child: Column(
      children: <Widget> [
        Row(
          children: [
            Text(
              tipo,
              style: TextStyle(
                fontSize: 18,
                color: FontColor,
                fontWeight: FontWeight.w600
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              placa,
              style: TextStyle(
                color: PrimaryColor,
                fontWeight: FontWeight.w400
              ),
            ),
          ],
        ),
        Row(
          children: <Widget> [
            Text(
              data,
            ),
            Text(' - '),
            Text(
              hora,
            ),
           
          ],
        ),
  SizedBox(height: 5,),
 Divider(
   height: 10,
   color: FontColor,
 ),
 SizedBox(height: 5,),
 
      ],
    ),
  );

}