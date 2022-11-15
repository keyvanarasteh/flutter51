// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {

final String productName;
final String productDescription;
//final String productPrice;
final String productImage;


  const ProductItem({
    Key? key,
    required this.productName,
    required this.productDescription,
   // required this.productPrice,
    required this.productImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
        
          width: 320,
      
          decoration: BoxDecoration(
            color:Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(18)
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
          
            Image.asset(productImage),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Row(
                    children: [
                      
                      Text(productName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                      ),
                      
                        Row(
                          children: [
                            SizedBox(width:155,),
                            Icon(Icons.favorite,
                    color:Color.fromARGB(255, 190, 23, 11),
                    size:40,
                    ),
                          ],
                          
                        ),
                        SizedBox(height:5,),
                        
                      
                    ],
                    
                  ),
                  
                
            //Icon(Icons.heart_broken,
              //      color:Color.fromARGB(255, 190, 23, 11),
                //      size:45
                  //    ),
                
                ],
              ),
              
            ),
          Row(children: [
            Padding(
               padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(children: [
                      Text(productDescription,
                        style:TextStyle(
                          fontSize: 18

                        )
                        
                        ),
                     
                    ],),
            )
          ],)
          ],
          ),
          
        ),
      ),
    );
  }
}