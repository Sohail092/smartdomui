import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class signuppage extends StatefulWidget{
  const signuppage({Key? key}) : super(key: key);

  @override
  _MysignuppageState createState() => _MysignuppageState() ;

}
class _MysignuppageState extends State<signuppage>{


  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/imagess/background_image.png'),fit: BoxFit.cover
    )
    ),
    child: Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
    child:Container(

    margin: EdgeInsets.only(left: 40 , top: 80),

    child: Stack(
    children: [
    Container(
    padding: EdgeInsets.only(top: 30 ),
        child: Text('Sign UP',
          style: TextStyle(fontSize: 50 , color: Colors.blue),
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 110),
        child: Text('Create an account to get started',
          style: TextStyle(fontSize: 15 , color: Colors.white, ),
        ),
      ),

      //#####Text-Fields#####
      Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.20, right: 20),
        child: Column(
          children: [
            TextField(

                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                cursorColor: Colors.black26,

                decoration: InputDecoration(

                    hintText: 'Enter your Name',
                    hintStyle: TextStyle(color: Colors.blueGrey),
                    fillColor: Colors.black,
                    filled: true,
                    border: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(30)
                    )
                )
            ),
            SizedBox(
              height: 20,
            ),
            TextField(

                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                cursorColor: Colors.black26,

                decoration: InputDecoration(

                    hintText: 'Enter Email',
                    hintStyle: TextStyle(color: Colors.blueGrey),
                    fillColor: Colors.black,
                    filled: true,
                    border: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(30)
                    )
                )
            ),
            SizedBox(
              height: 20,
            ),
            TextField(

                obscureText: true,
                decoration: InputDecoration(

                    hintText: 'Enter Password',
                    hintStyle: TextStyle(color: Colors.blueGrey),
                    fillColor: Colors.black,
                    filled: true,
                    border: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(30)
                    )
                )
            )

          ],
        ),

      ),
      //#####facebook and google icons#####
      Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5, right: 20 ,),
        child: Row(
          children: [

            Divider(
              color: Colors.blue,
              thickness: 2,
              indent: 27,
              endIndent: 100,
            ),
            Text('or Sign up with' , style: TextStyle(color: Colors.white),
            ),
            Divider(
              height: 20,
              color: Colors.white,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.55, right: 70,left: 70),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            FaIcon(FontAwesomeIcons.facebook , color: Colors.blue, size: 39,),
            CircleAvatar(
              child: FaIcon(FontAwesomeIcons.google , color: Colors.blue,),
            )



          ],
        ),

      ),

      Container(

        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.64, left: 20),
        child: RichText(text: TextSpan()),


      ),
      Center(
        child: Container(

          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.72,),
          child: ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,


            ),
            child:Text(
              '        Sign up        '
              , style: TextStyle(
                color: Colors.white,
                fontSize: 20
            ),
            ),
          ),
        ),
      ),




      ],
    ),
      )),
    ));
  }}