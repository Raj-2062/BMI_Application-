import 'package:bmi_app/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var h1 = TextEditingController();
  var w1 = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     appBar: AppBar(
       title: Center(child: Text("BMI",style: TextStyle(fontSize: 33,color: Colors.white),)),
       backgroundColor: Colors.green,
     ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
         // height: double.infinity,
         // width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(

                padding: const EdgeInsets.all(8.0),
                child: Text("Height(m)",style: TextStyle(fontSize: 12,color: Colors.black,),),
              ),
              TextField(
                controller: h1 ,
                decoration: InputDecoration(
                  hintText: "Width",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:  BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.green),
                  ),

                ),
              ),
              SizedBox(
                height: 20,


              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Width(kg)",style: TextStyle(fontSize: 12,color: Colors.black),),
              ),
              TextField(
                controller: w1 ,
                decoration: InputDecoration(
                  hintText: "Width",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                 
                ),
              ),
              Center(
                child: ElevatedButton(onPressed: (){

                }, 
                    child:Text("Click For BMI") ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
