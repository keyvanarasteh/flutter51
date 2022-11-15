// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class Dream_Home_Screen extends StatefulWidget {
  const Dream_Home_Screen({super.key});

  @override
  State<Dream_Home_Screen> createState() => _Dream_Home_ScreenState();
}

class _Dream_Home_ScreenState extends State<Dream_Home_Screen> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            color:Color.fromARGB(255, 250, 240, 240),
          ),
        child:Column(children: [     // Main Column Children
        //Top Bar Start
            Container(    
            margin:EdgeInsets.only(top:15,bottom: 15),  // Top
            padding: EdgeInsets.only(left:25,right: 0),
            child:Row(children: [
          Column(
            children: [
                  SizedBox(width:0 ,),
                   Text("Dream Home",
                   style: TextStyle(
                    fontSize: 25,   color: Color(0xFFfe673d),
                     fontWeight: FontWeight.w900
          
           ),
         ),
          ],
        ),
        
        
          SizedBox(width: 220,),
        
        // Top Bar Notifications Button Start
        
         ElevatedButton(
          
            onPressed: () {},
            
          child: Icon( 
            Icons.notifications_active_outlined,
          color: Color.fromARGB(255, 255, 255, 255),
            size: 18,
              ),
            style: ElevatedButton.styleFrom(
            shape: CircleBorder(), 
            padding: EdgeInsets.all(17),
             backgroundColor:(Color.fromARGB(255, 0, 0, 0)),
           ),
        ),
        // Top Bar Notifications Button End !!
            ],
          )
        ),
          //Top Bar End !!

          // Searching Start
       Container(
        width: 420,
            margin:EdgeInsets.only(top:10,bottom: 12),          // Search Box + Padding + Width +
            padding: EdgeInsets.only(left:10,right: 0),         // Decoration
            decoration:BoxDecoration(
            color:Color.fromARGB(255, 255, 255, 255),
            borderRadius:BorderRadius.circular(24)
            ),
            child:Container(
              padding: EdgeInsets.only(top:10,bottom:10),
           
            child:Row(
              children: [
                 
                Container(
                  height: 22,
                  width: 333,
                  child: TextField(
                    
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                          
                                    Icons.search,
                                    color: Colors.black87,
                                  ),
                                   hintText: "Restaurant name,cuisine, or a dish...",
                                   hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
                                    border:InputBorder.none, 
                                
                        ),
                      ),
                    ),
        
          ElevatedButton(
                              onPressed: () {},
            child: Icon( 
            Icons.menu_open,
          color: Color.fromARGB(255, 255, 255, 255),
            size: 22,
              ),
            style: ElevatedButton.styleFrom(
            shape: CircleBorder(), 
            padding: EdgeInsets.all(20),
             backgroundColor:(Color(0xFFff4800)),
           ),
        ),],
            ),
                  
            
       
       ),
      
      ),   
           SizedBox(height: 20,),

           // Resimli Content Başlangıç
           
           Container(
            width:420,
            height: 480,
            decoration: BoxDecoration(
              color:Colors.amber,
               borderRadius:BorderRadius.circular(24),
                image: DecorationImage(
            image: ExactAssetImage('dosyalar/images/main_home.png'),
            fit: BoxFit.cover,          
            ),
            
           
           ),
           
           child:Stack(
            children: [

               Container(
                 alignment:Alignment.topRight,
                  padding: EdgeInsets.only(top:20,right: 20),
                
                 child: TextButton.icon(
                 icon:Icon( Icons.pin_drop_outlined, color: Color.fromARGB(255, 0, 0, 0),),
                 label:Text("Maps",
                 style:TextStyle(
                  color:Colors.black,
                  fontWeight:FontWeight.w600,
                 )),
            onPressed: () {}, 
            style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 255, 255)),
            
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0),
                            )
                          )
                        )
                      ),
                  
                    ),
              //Content Black Opa. Container
             Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(top:360),
              width: 420,
              height: 120,
              decoration: BoxDecoration(
                color:Color.fromARGB(163, 0, 0, 0),
                borderRadius:BorderRadius.circular(24),
              ),
             child: Container(
              padding: EdgeInsets.only(top:20,left: 20),
               child: Column(

            //Content
                 children: [
                  
                   Text("Property Name",
                   style:TextStyle(
                    fontSize: 25,
                    color:Color(0xFFe0e0e0)
                   )
                   ),
                   Text("Here                   ",
                   style:TextStyle(
                    fontSize: 25,
                    color:Color(0xFFe0e0e0)
                   )
                   ), 
                   Padding(
                     padding: EdgeInsets.only(right: 62,),
                     child: Text("New Jersey, USA",
                     style:TextStyle(
                  color:Color.fromARGB(255, 197, 185, 185)
                     )
                     ),
                   ),
                 ],
               ),
             ),   
             
             ),

               Stack(                  // Like Button Start
                    children: [
            Container(
              alignment: Alignment.bottomRight,
               margin:EdgeInsets.only(top:15,bottom:40,right:22), 
              decoration:BoxDecoration(
               
              ),
              child: ElevatedButton(
          
              onPressed: () {},
              
                 child: Icon( 
              Icons.favorite,
                color: Color.fromARGB(255, 255, 255, 255),
              size: 22,
                ),
              style: ElevatedButton.styleFrom(
                
              shape: CircleBorder(), 
              padding: EdgeInsets.all(20),
               backgroundColor:(Color(0xFFff4800)
               ),
                                    ),
                                  ),
                                ), 
                              ],),
                            ],),
                                 // Like Button End
                          ), // CONTENT  END
            
              Stack(          
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:30),
                    child: Container(
                      width: 420,
                      
                      
                      decoration:BoxDecoration(
                        
                      ),
                      child: Align(
                        alignment: Alignment(0.0,1.0),
                        
                        child:ClipRRect(
                           
                          borderRadius: BorderRadius.all(
                            Radius.circular(22),
                            
                            
                          ),

                          // Nav Start
                          child:BottomNavigationBar(
                           
                            selectedItemColor: Color.fromARGB(255, 231, 228, 238),
                            unselectedItemColor: Colors.grey,
                           
                            backgroundColor: Color.fromARGB(255, 0, 0, 0),
                            
                            onTap: (int index){},
                            items:[
                              BottomNavigationBarItem(
                              icon:Icon(Icons.home,size: 30),
                              label:"",
                               backgroundColor: Color.fromARGB(255, 0, 0, 0),
                               
                               ),
                              

                               BottomNavigationBarItem(
                              icon:Icon(Icons.heart_broken,size: 30),
                              label:"",),

                               BottomNavigationBarItem(
                              icon:Icon(Icons.shopping_bag_outlined,size: 30),
                              label:"",),

                              BottomNavigationBarItem(
                              icon:Icon(Icons.person_outline_outlined,size: 30),
                              label:"",),
                             

                              

                            ]
                          )
                          // Nav End
                        )
                      ),
                    ),
                  )
                ],
               )
            


  
              ] // Main Column
            ) ,
          ),
        );
      }
    }