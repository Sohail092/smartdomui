import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class devicepage extends StatefulWidget{
  const devicepage({Key? key}) : super(key: key);

  @override
  _DevicePage createState() => _DevicePage() ;

}
class _DevicePage extends State<devicepage>{


  @override
  Widget build(BuildContext context) {
    //smartdevices list here
    List<Map<String, dynamic>> myDevices = [
      {
        "picPath": "assets/icons/smart-tv.png",
        "connection": "Connected",
        "deviceName": "Smart-TV",
        "powerStatus": true,
      },
      {
        "picPath": "assets/icons/light-bulb.png",
        "connection": "Not Connected",
        "deviceName": "Smart-bulb",
        "powerStatus": false,
      },
      {
        "picPath": "assets/icons/fan.png",
        "connection": "Connected",
        "deviceName": "Smart-Fan",
        "powerStatus": true,
      },
      {
        "picPath": "assets/icons/air-conditioner.png",
        "connection": "Connected",
        "deviceName": "Smart-Conditioner",
        "powerStatus": false,
      },
    ];
    bool isInstructionView=false;
    bool switchbtn = false ;
    void selectswitch(bool value){
      setState(() {
       if(switchbtn == true){
         switchbtn = false;
         value =switchbtn;
       }
       else{
         switchbtn = true;
         value = switchbtn;
       }
       print(value);
      });
    }
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(

        child: Container(
          margin: EdgeInsets.only(left: 30, right: 30),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.black,
            )

          ),
          child: Column(

              children: [

                Container(

                  child: Row(

                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Icon(
                    Icons.arrow_back_ios
                                ),

                                FaIcon(FontAwesomeIcons.ellipsisVertical)
                              ]
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
               ListTile(
                 title: Text('Devices' , style: TextStyle(
                   fontSize: 35,
                   fontWeight: FontWeight.bold
                 ),),
                 subtitle: Text('Connected' , style: TextStyle(
                   fontSize: 20,
                   color: Colors.black45
                 ),),
                 trailing: Switch(
                   value: isInstructionView,

                   onChanged: (bool isOn) {
                     setState(() {
                       isInstructionView = isOn;


                       print(isInstructionView);
                     });
                   },
                  activeColor: Colors.black,
                 )

               ),
          ListView.builder(
            itemCount: myDevices.length,
            itemBuilder: (context, index) {
              final device = myDevices[index];
              return SwitchListTile(
                //leading: Image.asset(device['picPath']),
                title: Text(device['deviceName']),
                subtitle: Text(device['connection']),
                value: device['powerStatus'],
                onChanged: (newValue) {
                  setState(() {
                    myDevices[index]['powerStatus'] = newValue;
                  });
                },
              );
            },
          )

                ]
              ),
        ),
    )
    );}
}