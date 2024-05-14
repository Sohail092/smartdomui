import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class homeui extends StatefulWidget{
  const homeui({Key? key}) : super(key: key);

  @override
  _MyHomeUi createState() => _MyHomeUi() ;

}
class _MyHomeUi extends State<homeui>{
  void menubox(){
    String iconpath;
    String name;
  }


  List menus =[
    ["assets/icons/light-bulb.png" , "Temperature" ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,


      body: SafeArea(

          child: Column(

            children: [
              Padding(padding: EdgeInsets.only(top: 40),),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                        Icons.arrow_back_ios
                    ),
                    Column(
                      children: [
                        Text('Temperature', style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500
                        )),
                        Text('Living Room', style: TextStyle(
                            fontSize: 18,
                            color: Colors.black45,
                            fontWeight: FontWeight.w300
                        ),)
                      ],
                    ),
                    FaIcon(FontAwesomeIcons.ellipsisVertical)
                  ]
              ),
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(padding: EdgeInsets.only(top: 90)),
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(
                      width: 160
                    ),
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          foregroundColor: Colors.white,
                          textStyle: TextStyle(
                            color: Colors.white,


                          )
                        ),
                        child: Text('Temperature')),
                  ),

                    ConstrainedBox(
                      constraints: BoxConstraints.tightFor(
                          width: 160
                      ),
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            foregroundColor: Colors.white,
                            textStyle: TextStyle(
                              color: Colors.white,


                            )
                        ),
                        child: Text('Statistics')),
                  ),
                ],
              ),

              

            ],

          )),
    );
  }}




