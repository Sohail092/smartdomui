import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class loginpage extends StatefulWidget{
  const loginpage({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState() ;

}
class _MyLoginState extends State<loginpage>{


  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/imagess/background_image.png'),fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:SingleChildScrollView(
clipBehavior: Clip.antiAlias,

        child:Container(

          margin: EdgeInsets.only(left: 40 , top: 80),
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 30 ),
                child: Text('Sign In',
                style: TextStyle(fontSize: 50 , color: Colors.blue),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 110),
                child: Text('Welcome Back! Sign in to continue',
                  style: TextStyle(fontSize: 15 , color: Colors.white, ),
                ),
              ),

             //#####Text-Fields#####
             Container(
               padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.25, right: 20),
               child: Column(
                 children: [
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
                     height: 30,
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
              // #####forgot password Text#####
              Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.45, left: 120),
                child: Text('Forgot Password',style: TextStyle(
                  color: Colors.blue
                ),),
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
                      Text('or Sign in with' , style: TextStyle(color: Colors.white),
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
                  child: Text(
                  'Sign in by accepting our Terms and Policies'
                      ,style: TextStyle(
                    color: Colors.white,
                  ),
                  ),


              ),
              Center(
                child: Container(

                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.68,),
                  child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,


                      ),
                      child:Text(
                       '        Sign in        '
                           , style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                      ),
                      ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.77,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don`t have any account?  ' ,style: TextStyle(
                      color: Colors.white,
                    ),),
                    InkWell(
                      child: Text('Signup' , style: TextStyle(
                        color: Colors.blue
                      ),),
                    )
                  ],
                ),

              )



            ],
          ),
        ),
      ),
    ),);
  }
}