import 'package:flutter/material.dart';
import 'package:manserv_app/base/pages/profile.dart';

import '../../constants.dart';
import '../modelLogin.dart';
import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

    var usuario = TextEditingController();
  var password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: PrimaryColor,
          elevation: 0,
        ),
        body: SingleChildScrollView(
                  child: Stack(
            children: <Widget>[
              Image(
                image: AssetImage("assets/img/bg.jpg"),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
            
              Container(
                height: size.height * 0.25,
                decoration: BoxDecoration(
                  color: PrimaryColor,
                ),
                child: Row(
                  
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 17),
                      child: Image.asset("assets/img/logo.png",
                      width: size.width * 0.4,
                      
                      ),
                    ),
                  ],
                ),
              ),
              
              Center(
                child: Opacity(
                  opacity: 1,
                  child: Container(
                    
                    padding: EdgeInsets.only(right: 25.0, left: 25.0),
                    decoration: BoxDecoration(
                      color: Color(0x60e6e6e6),
                    ),
                    margin: EdgeInsets.only(top: 220.0),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.45,
                    child: Opacity(
                      opacity: 1,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            controller: usuario,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffbcbcbc),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(0),
                                ),
                              ),
                              prefixIcon: Icon(Icons.account_box),
                              labelText: "Login",
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(height: 50),
                          TextFormField(
                            controller: password,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffbcbcbc),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(0),
                                ),
                              ),
                              prefixIcon: Icon(Icons.enhanced_encryption),
                              labelText: "Senha",
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          RaisedButton(
                            onPressed: () async {
                              var model = ModelLogin();
                                model.validarLogin(usuario.text, password.text);
                                var status = await model.validarLogin(usuario.text, password.text);
                                if (status == 200) {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                                } else {
                                  print("ble");
                                }
                            },
                            child: const Text("Entrar"),
                            color: PrimaryColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));


        
  }
}
