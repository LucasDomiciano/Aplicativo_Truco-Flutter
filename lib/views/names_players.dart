import 'package:flutter/material.dart';
import 'package:marca_tento/views/home_page.dart';

class NamesPlayersApp extends StatelessWidget {

  TextEditingController time1Controller = TextEditingController();
  TextEditingController time2Controller = TextEditingController();

  String t1;
  String t2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),*/
      body: ListView(
        children: <Widget>[
          Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,

              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF304ffe), Color(0xFF536dfe)],

                    /*colors: [
                    Color(0xFFf45d27),
                    Color(0xFFf5851f)
                  ],*/
                  ),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(90))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'images/icone.png',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text("Papa Tento",style: TextStyle(fontWeight: FontWeight.bold), textScaleFactor: 1.5,)
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: TextField(
                        controller: time1Controller,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.people,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintText: 'Time - 1',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: TextField(
                      controller: time2Controller,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.people,
                          color: Theme.of(context).primaryColor,
                        ),
                        hintText: 'Time - 2',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(30.0),
                      color: Color(0xFF536dfe),
                      child: MaterialButton(
                          minWidth: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          onPressed: () {
                            
                            t1 = time1Controller.text;
                            t2 = time2Controller.text;

                            if (t1.isEmpty) { t1 = "Nós"; }
                            if (t2.isEmpty) { t2 = "Eles"; }

                            Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => HomePage(time1: t1, time2: t2,))
                            );
                            print('onpresed');
                          },
                          child: Text(
                            "Iniciar",
                            textAlign: TextAlign.center,
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        ],
      ),
    );
  }
}
