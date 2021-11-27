// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        //backgroundColor: Colors.lightGreenAccent,
        body:Homein()
      ),
    );
  }
}
class Homein extends StatefulWidget {
  const Homein({Key? key}) : super(key: key);

  @override
  _HomeinState createState() => _HomeinState();
}

class _HomeinState extends State<Homein> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/College-of-Engineering-Chengannur-Campus-View-2.jpg"),
              fit: BoxFit.fitHeight)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () => launch('https://ceconline.edu'),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Image.asset("assets/logos/cec_logo_300.png",width: 100,),
                SizedBox(
                  width:10,
                ),
                Column(
                  children: const [
                    Text("COLLEGE OF ",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
                    Text("ENGINEERING",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
                    Text("CHENGANNUR",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),)
                  ],
                ),
                SizedBox(
                  width:MediaQuery.of(context).size.width/5.7,
                ),
                Container(
                  margin: EdgeInsets.only(right: 20.0,top: 10.0),
                  decoration: BoxDecoration(
                      color:Colors.white,

                      borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.notifications_active, color: Colors.yellow,
                      size: 30,),
                    onPressed: () {
                      print("icon pressed");
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0,right: 20.0),
            width: MediaQuery.of(context).size.width,
            height: 180,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              subelemento("NOTICE",Colors.amberAccent),
              subelemento("FORUMS",Colors.redAccent),
              subelemento("PROJECTS",Colors.amberAccent)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              subelemento("CEC NEWS",Colors.redAccent),
              subelemento("EVENTS",Colors.amberAccent),
              subelemento("STAFFS",Colors.redAccent)
            ],
          ),

        ],
      ),
    );
  }
  subelemento(String textdata,Color _color){
    return GestureDetector(
      onTap: (){print("subelement");
      Navigator.of(context).push(MaterialPageRoute(builder: (context){
        return Home();
      }));
      },
      child: Container(
        width:  MediaQuery.of(context).size.width/3.5,
        height: 100,
        decoration: BoxDecoration(
          color: _color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(child: Text(textdata,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.brown),)),
      ),
    );
  }

}
