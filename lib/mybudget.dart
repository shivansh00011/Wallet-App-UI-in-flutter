import 'dart:ffi';

import 'package:atm/bargraph.dart';
import 'package:atm/homepage.dart';
import 'package:flutter/material.dart';

class MyBudget extends StatefulWidget {
  const MyBudget({super.key});

  @override
  State<MyBudget> createState() => _MyBudgetState();
}

class _MyBudgetState extends State<MyBudget> {
  List<double> monthlyExpense=[
    385.5,
    325.45,
    450.54,
    120.20,
    570.75,
    410.25,
    145.45,


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
          child: Icon(Icons.arrow_back_ios,color: Colors.orange,)),
        title: Text('My budget') ,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: 35,
              width: 290,
              decoration: BoxDecoration(
               color : Color.fromARGB(255, 53, 52, 52),
               borderRadius: BorderRadius.only(
                topRight: Radius.circular(5),
                bottomRight: Radius.circular(5),
               )
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text('|', style: TextStyle(color: Colors.grey,fontSize: 18),),
                    const SizedBox(width: 20,),
                    Text('Week', style: TextStyle(color: Colors.grey),),
                    const SizedBox(width: 25,),
                    Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(
                        child: Text('Month',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    const SizedBox(width: 35,),
                    Text('Year', style: TextStyle(color: Colors.grey),)
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text('January 2023',style: TextStyle(color: Colors.grey),),

          ),
          const SizedBox(height: 6,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text('\$ 1,345',style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold),),

          ),
          const SizedBox(height: 25,),
          Padding(padding: const EdgeInsets.only(left: 15),
          child: Text('My costs (in \$)', style: TextStyle(color: Colors.white, fontSize: 18),),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 200,
            child: MyBarGraph(monthlyExpense: monthlyExpense,),
          ),
          const SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Container(
              height: 70,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 53, 52, 52),
                borderRadius: BorderRadius.circular(10)

              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 80, 79, 79),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon(Icons.arrow_downward),
                    ),
                    const SizedBox(width: 12,),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Income',style: TextStyle(color: Colors.grey, fontSize: 12),),
                          const SizedBox(height: 2,),
                          Text('\$ 920.00',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18),)
                  
                        ],
                      ),
                    ),

                    const SizedBox(
                      width: 45,
                    ),
                    Text('|',style: TextStyle(color: Colors.grey,fontSize: 40),),
                    const SizedBox(width: 15,),

                    Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 80, 79, 79),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon(Icons.arrow_upward),
                    ),
                    const SizedBox(width: 12,),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Spend',style: TextStyle(color: Colors.grey, fontSize: 12),),
                          const SizedBox(height: 2,),
                          Text('\$ 425.00',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18),),

                  
                        ],
                      ),
                    ),

                    
                  ],
                ),
              ),
                  ]
            ),
          )

            )
          ),

          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text('All transactions',style: TextStyle(color: Colors.white, fontSize: 20),),
          ),
          const SizedBox(height: 15,),

          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 53, 52, 52),
                    borderRadius: BorderRadius.circular(40)

                  ),
                  child: Icon(Icons.home_outlined, color: Color.fromARGB(255, 154, 95, 236),),
                ),
                const SizedBox(width: 15,),
                Text('House bills',style: TextStyle(color: Colors.white, fontSize: 16),),
                Expanded(child: Container()),
                Text('-\$720.50', style: TextStyle(color: Colors.white, fontSize: 18),)

                
              ],
            ),
          ),
          const SizedBox(height: 20,),
           Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 53, 52, 52),
                    borderRadius: BorderRadius.circular(40)

                  ),
                  child: Icon(Icons.store_outlined, color: Color.fromARGB(255, 246, 69, 231),),
                ),
                const SizedBox(width: 15,),
                Text('Cafe and restaurants',style: TextStyle(color: Colors.white, fontSize: 16),),
                Expanded(child: Container()),
                Text('-\$453.20', style: TextStyle(color: Colors.white, fontSize: 18),)

                
              ],
            ),
          ),
          const SizedBox(height: 20,),
           Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 53, 52, 52),
                    borderRadius: BorderRadius.circular(40)

                  ),
                  child: Icon(Icons.play_arrow, color: Colors.greenAccent,),
                ),
                const SizedBox(width: 15,),
                Text('Entertainment',style: TextStyle(color: Colors.white, fontSize: 16),),
                Expanded(child: Container()),
                Text('-\$205.75', style: TextStyle(color: Colors.white, fontSize: 18),)

                
              ],
            ),
          ),

        ],
      ) ,
      
    );
  }
}