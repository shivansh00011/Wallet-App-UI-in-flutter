import 'package:atm/homepage.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/atmcards.png', height: 570,width: 600,),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Text('Begin mastering your financial journey today!',style: TextStyle(fontSize: 30),),
            
          ),
          const SizedBox(height: 15,),
          Padding(padding: const EdgeInsets.only(left: 15,right: 15),
          child: Row(
            children: [
              GestureDetector(
                onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage() ));},
                child: Container(
                  height: 55,
                  width: 230,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Center(
                    child: Text('Get Started', style: TextStyle(color: Colors.white, fontSize: 16),),
                  ),
                ),
              ),
              const SizedBox(width: 15,),

              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/apple.png') ),
                  
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.orange
                  )
                ),
                
              ),
               const SizedBox(width: 15,),

              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/google.png') ),
                  
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.orange
                  )
                ),
                
              ),

              
            ],
          ),
          
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Row(
              children: [
                Text('You have account?',style: TextStyle(color: Colors.grey, fontSize: 18 ),),
                const SizedBox(width: 5,),
                Text('Sign in', style: TextStyle(color: Colors.white, fontSize: 18,decoration: TextDecoration.underline, decorationThickness: 2))
              ],
            ),
          )
        ],
      ),


    );
  }
}