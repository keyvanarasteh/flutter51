// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter_homework_page1/product_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          //BottomNavigationbar START
      bottomNavigationBar: BottomNavigationBar(
        items: [
         BottomNavigationBarItem(
          // Home Icon
          icon:Icon(Icons.home,color:Color(0xFF9088E4)),
          label:'',
         ),
             // Notifications Icon
         BottomNavigationBarItem(
          icon:Icon(Icons.notifications,color:Color.fromARGB(255, 81, 80, 88)),
          label:'',
         ),
              // Plus Icon
         BottomNavigationBarItem(
          icon:Icon(Icons.add_sharp,color:Color.fromARGB(255, 81, 80, 88)),
          label:'',
          
         ),
                // Chat Icon
        BottomNavigationBarItem(
          icon:Icon(Icons.chat_outlined,color:Color.fromARGB(255, 81, 80, 88)),
          label:'',
          backgroundColor: Colors.red
          
         ),
                    // Profile Icon
         BottomNavigationBarItem(
          icon:Icon(Icons.portrait_rounded,color:Color.fromARGB(255, 81, 80, 88)),
          label:'',
          
          
         ),
        ],
       ),

        //BottomNavigationbar END
        //https://dribbble.com/shots/19822121-Pet-Shop-Mobile-App-UI-Design-Pet-Adoption-App
        
      backgroundColor: Color.fromARGB(255, 248, 246, 246),
      body: 
        
      Container(
        
        child:Column(
          children: [
       
        Container(
            margin:EdgeInsets.only(top:45,bottom: 15),
            padding: EdgeInsets.only(left:20,right: 20),
            child:Row(
              children: [
              Container(
                 
                 padding: EdgeInsets.only(left:120,right:2),
                 
            width: 45,
            height: 45,
         
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              
            image: DecorationImage(
                  image:AssetImage('assets/images/menuuu.png',) 
                 
                  ),
              
            ),
            
          ),

          Column(
            children: [
              Text("Hellooo,",
              style: TextStyle(
                color:Color(0xFF8c8a8a),
                fontSize: 22,
                ),
                ),

              Row(children: [
                  SizedBox(width:22 ,),
                   Text("Shariful",
                   style: TextStyle(
                    fontSize: 25,   color: Colors.black,
                     fontWeight: FontWeight.w700,
          
           ),
         ),
              Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0), 
              image: DecorationImage(
              image:AssetImage('assets/images/wavingg.png',
              ) 
                 
                  ),
              
            ),
                   ),
                  
             
              ],
            ),
          ],
        ),
          SizedBox(width: 220,),
          Container(
            width: 45,
            height: 45,
             padding: EdgeInsets.only(left:220,right:2),
             //resim buna bence

             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
             image: DecorationImage(
                  image:AssetImage('assets/images/profilephoto.png', 
                 
                  ),
             ),
             ),
          )
            ],
          )
        ),
 
          
        SizedBox(height: 10,),
      Container(
              padding: EdgeInsets.only(top:10,bottom:10),
              height: 54,
                  width: 453,
           decoration: BoxDecoration(
            color:Color.fromARGB(255, 255, 255, 255),
            borderRadius:BorderRadius.circular(22)
           ),
            child:Row(
              children: [
                 
                Container(
                  height: 22,
                  width: 333,
                  child: TextField(
                    
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                          
                                    Icons.search,
                                    color:Color(0xFF9088E4),
                                  ),
                                   hintText: "Search here...",
                                   hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
                                    border:InputBorder.none, 
                                
                        ),
                      ),
                    ),
        
        ],
            ),
                  
            
       
       ),
                       SizedBox(height: 10,),
          Container(child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
      
            
         
            //Search Altındaki İçerik START
            Container(  
              width:450,
              height: 155,
              padding: const EdgeInsets.only(left:20,top:25),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,  
                children: [
                
                Text('Street pets need',
                style:TextStyle(
                fontSize:26, color:Colors.white,
                   
                ),
              ),
               Text('our protection',
                style:TextStyle(
                   fontSize:26, color:Colors.white
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 11),
                child: Container(
                  width: 120,
                  height: 39,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(222),
                    color:Color.fromARGB(255, 255, 255, 255),
                  ),
             child:ElevatedButton(
                                onPressed: () {},
            child:Text("Donate Now",
            style:TextStyle(
              fontSize: 14,
              color:Colors.black,
              fontWeight: FontWeight.w500,
            )),
            style: ElevatedButton.styleFrom(
            
            padding: EdgeInsets.all(20),
             backgroundColor:(Color.fromARGB(255, 255, 255, 255)),
           ),
        ),
          ),
              ),
              ],
              ),
              decoration: BoxDecoration(
                color:Color(0xFF9088E4),
              borderRadius: BorderRadius.all( Radius.circular(16) ),
              ),
      
             
            ),
            //Ana köpek resminin olduğu container
            Container(
              width:150,
              height: 174,
             margin: EdgeInsets.only(left:190,bottom: 25),
          
              decoration: BoxDecoration(
                //color:Color.fromARGB(255, 156, 158, 187).withOpacity(0.7),
                borderRadius: BorderRadius.circular(20),

                image: DecorationImage(
                  image:AssetImage('assets/images/main_dog.png',
                 
                  ),
                  fit:BoxFit.fill,
           
                ),

              ),
            )
          ],
        ),

),
        

          Row(children: [
            SizedBox(width: 20,),
              Text('Categories',
              style:TextStyle(fontSize:30,
              fontWeight: FontWeight.w700,
              )
              ),
          Container(
              margin: EdgeInsets.only(left:255),
              child: Text('Explore',
              style:TextStyle(fontSize:20,
              fontWeight: FontWeight.w300,
              color:Color(0xFF9088E4), 
              )
            ),
          ),
         ],
        ),
              SizedBox(height:10 ,),
            
            //CATEGORIES START
              Row(
                children: [
                  Container(
                    
                     margin: EdgeInsets.only(left:10),
                    width:140,
                    height: 55,
                     
                      decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(18),
                         color:Color.fromARGB(255, 255, 255, 255),
                      ),
                    child: Row(children: [
                      SizedBox(width:8 ,),
                      Container(child: Image.asset("assets/images/catmain.png"),
                     
                      ),
                      
                        SizedBox(width:6 ,),
                      Text('Cats',
                      style:TextStyle(
                        color:Color.fromARGB(255, 0, 0, 0),
                        
                        
                      )
                      ),
                    ],),
                    

                  
                  ),
                  SizedBox(width:20 ,),
            
            
            Container(
                    
                     margin: EdgeInsets.only(left:10),
                    width:130,
                    height: 55,
                   
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(18),
                        color:Color(0xFF9088E4),
                      ),
                    child: Row(children: [
                      SizedBox(width:8 ,),
                      Container(child: Image.asset("assets/images/dogmain.png",
                      width: 60,
                      ),
                      
                      ),
                      SizedBox(width:10 ,),
                      Text('Dogs',
                      style:TextStyle(
                        color:Color.fromARGB(255, 255, 255, 255)
                      )
                      ),
                    ],),
                  ),

                SizedBox(width:20 ,),
                  Container(
                  margin: EdgeInsets.only(left:10),
                  width:130,
                  height: 55,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color:Color.fromARGB(255, 255, 255, 255),
                 ),
                  child: Row(children: [
                  SizedBox(width:1 ,),
                      Container(child: Image(image:AssetImage('assets/images/fishmain.png')),
                      
                      ),
                      SizedBox(width:10 ,),
                      Text('Fish',
                      style:TextStyle(
                        color:Color.fromARGB(255, 0, 0, 0)
                      )
                      ),
                    ],),
                  ),

                ],
              ), 
                
                 //CATEGORIES END
              SizedBox(height:6 ,),
                // ListView Start
              Expanded(
                child:ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProductItem(
                      productName:"Brook" ,
                      productImage: 'assets/images/dogtype1.png',
                      productDescription: "1.2 Km Away",
                    ),
                    ProductItem(
                      productName:"Shelly" ,
                      productImage: 'assets/images/dogtype2.png',
                      
                      productDescription: "1.4 Km Away",
                    ),
                    ProductItem(
                      productName:"BLA1" ,
                      productImage: 'assets/images/dogtype1.png',
                      productDescription: "ASdasd",
                    ),
                 // ListView End
                  ],
                  
                )
              )
          ],
        ) ,

        
      ),
        

       
     
    );
    
  }
}

















