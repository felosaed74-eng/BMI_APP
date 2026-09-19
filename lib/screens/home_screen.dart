import 'package:bmi_app/widget/gender_widget.dart';
import 'package:bmi_app/widget/info_user_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool switchBtn = false;
  bool isMale = true;
  int height = 150;
  int weight = 60;
  int age =21;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff1C2135),
      appBar: AppBar(
      elevation: 100,
        backgroundColor: Color(0xff1C2135),
        title:Text(
          "BMI Calculator",
          style: TextStyle(
           fontSize: 20,
           fontWeight: .w600,
           color: Colors.white
          ),
         textAlign: .center,
        ),
        leading: Switch(
          value: switchBtn,
          onChanged: (value){
            switchBtn = value;
            setState(() {});
          },
          activeColor: Color(0xff3D81E8),
          inactiveThumbColor: Colors.grey,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 25,
          children:[
           Row(
             spacing: 10,
             children: [
               GenderWidget(
                isSelected: isMale,
                 image:"assets/icons/Vector.png" ,
                 title:"Male" ,
                 onTap: () {
                  isMale = true;
                  setState(() {});
                 },
                ),
               GenderWidget(
                 isSelected: !isMale,
                 image:"assets/icons/Vector (1).png" ,
                 title:"Female" ,
                 onTap: () {
                  isMale = false;
                  setState((){});
                 },
                ),
              ],
            ),
           
           Expanded(
            child: 
            Container(
            decoration: BoxDecoration(
              color: Color(0xff333244),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: .spaceEvenly,
              children: [
                Text("Height",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: .w400,
                  color: Color(0xff8B8C9E),
                ),
                ),

                Row(
                  mainAxisAlignment: .center,
                  crossAxisAlignment: .end,
                  children: [
                    Text(
                      height.toString(),
                      style: TextStyle(
                      fontSize: 32,
                      fontWeight: .w600,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                      "cm",
                      style: TextStyle(
                      fontSize: 20,
                      fontWeight: .w400,
                      color: Color(0xff8B8C9E),
                    ),
                  ),
                ],  
              ),
              Slider(
                min: 50,
                max:250,
                value: height.toDouble(),
                activeColor: Color(0xff3D81E8),
                onChanged: (value){
                  height = value.toInt();
                  setState(() {});
                }),
              ],
            ),
           ),
           ), 
           
           Expanded(
            child: Row(
              spacing: 10,
              children: [
               InfoUserWidget(
                title:"Weight" ,
                value: weight,
                add: () {
                  if(weight<=150){
                    weight++;
                    setState(() {});
                  }
                } ,
                remove: () {
                  if(weight>=2){
                    weight--;
                    setState(() {});
                  }
                },
                ),
               InfoUserWidget(
                title: "Age",
                value: age,
                add: () {
                  if(age <=70){
                    age++;
                    setState(() {});
                  }
                },
                remove: () {
                   if(age >=2){
                    age--;
                    setState(() {});
                  }
                },
               ),
           ],
           ),
           ),
          
          ],
        ),
      ),
      bottomNavigationBar: MaterialButton(
        onPressed: (){},
        color: Color(0xff3D18E8),
        padding: EdgeInsets.symmetric(vertical: 30), 
        child: Text(
          "Calculate",
          style: TextStyle(
            fontSize: 32,
            fontWeight: .w600,
            color: Colors.white
          ),
          ), 
      ),
    );
  }
}

