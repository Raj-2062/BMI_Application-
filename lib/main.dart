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
  var result = "";
  var info = "";
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
                child: Text("Weight(kg)",style: TextStyle(fontSize: 12,color: Colors.black,),),
              ),
              TextField(
                controller: w1 ,
                decoration: InputDecoration(
                  hintText: "Weight",
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
                child: Text("Height(ft)",style: TextStyle(fontSize: 12,color: Colors.black),),
              ),
              TextField(
                controller: h1 ,
                decoration: InputDecoration(
                  hintText: "Height",
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){

                    try {
                      var a = double.parse(w1.text.trim());
                      var b = double.parse(h1.text.trim());
                      b = b*0.3048;
                      var bmi = a / (b * b);
                      result = bmi.toStringAsFixed(2);
                      if(bmi < 18.5) {
                        info = "You are UNDERWEIGHT";
                      }
                      else if (bmi > 18.5 && bmi < 25 ) {
                        info = "You are in Normal weight";
                      }
                      else if (bmi >= 25 && bmi < 30) {
                        info = "You are OVERWEIGHT";
                      }
                      else if (bmi >= 30 && bmi < 35) {
                        info = "You are in Obesity Class I ";
                      }
                      else if (bmi >= 35 && bmi < 40) {
                        info = "You are Obesity Class II";
                      }
                      else if (bmi >= 40) {
                        info = "You are Obesity Class III";
                      }

                    } catch (e) {
                      result = "Invalid input";
                    }
                    setState(() {});
                  },
                      child:Text("Click For BMI") ),
                ),
              ),
              Padding(

                padding: const EdgeInsets.all(10.0),
                child: Text("The  BMI is $result",style: TextStyle(fontSize: 17,color:Colors.black),),
              ),

              SizedBox(
                height: 20,


              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(info,style: TextStyle(fontSize: 17, color: Colors.black),),
              )

            ],
          ),
        ),
      ),
    );
  }
}
