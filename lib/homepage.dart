import 'package:atm/mybudget.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        children: [
          Padding(
            padding: const EdgeInsets.only(top:50, left: 15,right: 15),
            child: Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage('assets/profile.jpg'),radius: 25,),
                const SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Toni Brooks', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 17),),
                    const SizedBox(height: 5,),
                    Text('Good Morning', style: TextStyle(color: Colors.grey, fontSize: 12),)
                  ],
                ),
                Expanded(child: Container()),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 53, 52, 52),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(
                    child: Icon(Icons.notifications_none_outlined),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 25,),

          Padding(padding: const EdgeInsets.only(left: 15,right: 15),
          child: Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 46, 45, 45),
              borderRadius: BorderRadius.circular(16)
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 15,left: 20,right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Balance',style: TextStyle(color: Colors.white, fontSize: 15),),
                      Expanded(child: Container()),
                      Icon(Icons.more_horiz_outlined,size:25,),

                    ],
                  ),
                  Text('\$ 15,560.00', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
                  Expanded(child: Container()),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      
                      children: [
                        Text('****3286', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        Expanded(child: Container()),
                        
                        Image.asset('assets/visa.png',height: 50,),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          ),

          const SizedBox(height: 30,),

          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 55,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 53, 52, 52),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.orange),
            
                  ),
                  child: Icon(Icons.send_outlined),
                ),
                Container(
                  height: 55,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 53, 52, 52),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.orange),
            
                  ),
                  child: Icon(Icons.add),
                ),
                Container(
                  height: 55,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 53, 52, 52),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.orange)
            
                  ),
                  child: Icon(Icons.list),
                ),
                Container(
                  height: 55,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 53, 52, 52),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.orange),
            
                  ),
                  child: Icon(Icons.badge_sharp),
                ),
              ],
            ),
          ),

          const SizedBox(height: 9,),

          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Transfer',style: TextStyle(fontWeight: FontWeight.bold),),
                const SizedBox(width: 60,),
                Text('Top up',style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(width: 60,),
                Text('Pay bills',style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(width: 67,),
                Text('Loan',style: TextStyle(fontWeight: FontWeight.bold))
                
              ],
            ),
          ),
          const SizedBox(height: 20,),
          

          Expanded(child: Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 53, 52, 52),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25)
            
              ),

            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 2, left: 15,right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Text('_______',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                  const SizedBox(height: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Transactions',style: TextStyle(color: Colors.white,fontSize: 21),),
                          Expanded(child: Container()),
                          GestureDetector(
                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyBudget()));},
                            child: Text('My budget', style: TextStyle(color: Colors.grey)))
            
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Text('Today',style: TextStyle(color: Colors.white),),
                      const SizedBox(height: 15,),
                      Row(
                        children: [
                          CircleAvatar(backgroundImage: AssetImage('assets/starbucks.png',),radius: 25,),
                          const SizedBox(width: 12,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Starbucks', style: TextStyle(color: Colors.white, fontSize: 18),),
                              const SizedBox(height: 2,),
                              Text('Cafe and restaurants', style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                          Expanded(child: Container()),
                          Text('-\$110.50',style: TextStyle(fontSize: 18),)
                      

                        ],
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        children: [
                          CircleAvatar(backgroundImage: AssetImage('assets/Netflix.jpg',),radius: 25,),
                          const SizedBox(width: 12,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Netflix', style: TextStyle(color: Colors.white, fontSize: 18),),
                              const SizedBox(height: 2,),
                              Text('Entertainment', style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                          Expanded(child: Container()),
                          Text('-\$12.00',style: TextStyle(fontSize: 18),)
                      

                        ],
                      ),
                      const SizedBox(height: 5,),
                      Text('Today',style: TextStyle(color: Colors.white),),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          CircleAvatar(backgroundImage: AssetImage('assets/emoji.jpg',),radius: 22,),
                          const SizedBox(width: 12,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Gwen Stacy', style: TextStyle(color: Colors.white, fontSize: 18),),
                              const SizedBox(height: 2,),
                              Text('Transfer', style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                          Expanded(child: Container()),
                          Text('+\$500.00',style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 80, 229, 85)),)
                      

                        ],
                      ),

                    ],
                  )
                  
                ],
              ),
            ),
          )),

         

        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 36, 36, 36),
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.card_membership_outlined), label: 'Card'),
        BottomNavigationBarItem(icon: Icon(Icons.money), label: 'Transaction'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),

      ]),
    );
    
  }
}