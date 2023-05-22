import 'package:flutter/material.dart';
import 'Exercice.dart';
import 'Presentation_exercice_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workout Tracker', style: TextStyle(color : Colors.black, fontSize:25, fontFamily:'add font here'),
          ) ,backgroundColor: Colors.indigo[900]
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[

                    AspectRatio(aspectRatio: 2.5/1,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/exercice_dos');
                      } ,
                      child: Center(
                          child: Text("Dos", style: TextStyle(fontSize: 19),)
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        primary: Colors.grey[200],
                        onPrimary: Colors.black
                      ),
                    ) ,
                    ),

                    SizedBox(width: 10,),

                    AspectRatio(aspectRatio: 2.5/1,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/exercice_bicep');
                        } ,
                        child: Center(
                            child: Text("Bicep", style: TextStyle(fontSize: 19),)
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            primary: Colors.grey[200],
                            onPrimary: Colors.black
                        ),
                      ) ,
                    ),

                    SizedBox(width: 10,),

                    AspectRatio(aspectRatio: 2.5/1,
                      child: ElevatedButton(
                        onPressed: (){

                        } ,
                        child: Center(
                            child: Text("Tricep", style: TextStyle(fontSize: 19),)
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            primary: Colors.grey[200],
                            onPrimary: Colors.black
                        ),
                      ) ,
                    ),

                    SizedBox(width: 10,),

                    AspectRatio(aspectRatio: 2.5/1,
                      child: ElevatedButton(
                        onPressed: (){

                        } ,
                        child: Center(
                            child: Text("Poitrine", style: TextStyle(fontSize: 19),)
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            primary: Colors.grey[200],
                            onPrimary: Colors.black
                        ),
                      ) ,
                    ),

                    SizedBox(width: 10,),

                    AspectRatio(aspectRatio: 2.5/1,
                      child: ElevatedButton(
                        onPressed: (){

                        } ,
                        child: Center(
                            child: Text("Épaules", style: TextStyle(fontSize: 19),)
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            primary: Colors.grey[200],
                            onPrimary: Colors.black
                        ),
                      ) ,
                    ),

                    SizedBox(width: 10,),

                    AspectRatio(aspectRatio: 2.5/1,
                      child: ElevatedButton(
                        onPressed: (){

                        } ,
                        child: Center(
                            child: Text("Jambes", style: TextStyle(fontSize: 19),)
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            primary: Colors.grey[200],
                            onPrimary: Colors.black
                        ),
                      ) ,
                    ),
                  ],
                ),
              )
            ],
          )
        )

      )
    );
  }
}