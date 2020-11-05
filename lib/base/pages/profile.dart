import 'package:flutter/material.dart';

import '../../constants.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: appBar(),
      body: carrouselPendencias(),
      bottomNavigationBar: menuInferior(),
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

class carrouselPendencias extends StatefulWidget {
  @override
  _carrouselPendenciasState createState() => _carrouselPendenciasState();
}

class _carrouselPendenciasState extends State<carrouselPendencias> {
  PageController _pageController;
  int initialPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.8,
      initialPage: initialPage,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          controller: _pageController,
          itemCount: 3,
          itemBuilder: (context, index) => PendenciasCard(),
        ),
      ),
    );
  }
}

class PendenciasCard extends StatelessWidget {
  final Pendencia pendencia;

  const PendenciasCard({Key key, this.pendencia}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 11, right: 11),
            width: size.width * 0.8,
            padding: EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
                color: Color(
                  0xffe6e6e6,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      blurRadius: 6,
                      offset: Offset(1, 1))
                ]),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                    left: 15,
                  ),
                ),
                Center(
                  child: Text(
                    'Retirada de Veículo',
                    style: TextStyle(
                      fontSize: 23.0,
                      color: Color(0xff979797),
                    ),
                  ),
                ),
                const Divider(
                  color: Color(0xff979797),
                  thickness: 1,
                  height: 30.0,
                ),
                Text(
                  'Data:',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xff979797),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Hora:',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xff979797),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Número do Vaucher:',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xff979797),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Locadora:',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xff979797),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Local de Retirada:',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xff979797),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                const Divider(
                  color: Color(0xff979797),
                  thickness: 1,
                  height: 10.0,
                ),
                RaisedButton(
                  onPressed: () {},
                  color: Color(0xffe6e6e6),
                  elevation: 0,
                  child: Text(
                    'Retirar',
                    style: TextStyle(color: Color(0xff979797), fontSize: 22),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
        )
      ],
    );
  }
}

class Pendencia {}
