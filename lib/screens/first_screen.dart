import 'package:fivescreens/model/product_model.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //The network is too low, lemme just try and push these to github
    //watch! and let's do it 2geda

    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        width: screenSize.width,
        color: const Color.fromARGB(12, 0, 0, 0),
        child: Column(
          children: [

            //Header --------------------------------------------------------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome To", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 13),),
                    Text("Lumina Home", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 21),),
                  ],
                      
                
                ),
                Row(
                  spacing: 20,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(Icons.search_rounded, color: Colors.black, size: 23,),
                    ),
                    Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Icon(Icons.shopping_bag_outlined, color: Colors.black, size: 23,),
                ),
                  ],
                ),
                
              ],),
            ),
          
            // Product Displays ----------------------------------------------
            SizedBox(
              height: screenSize.height * 0.7,
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  // crossAxisSpacing: 10,
                  // mainAxisSpacing: 10
                  
                  ), 
                itemBuilder: (context, index){
                  final product = products[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(image: AssetImage(product.imageUrl,), fit: BoxFit.cover),
                          ),
                        ),
                        Text(product.productName, style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 16),),
                        Text(product.productMaterial, style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey, fontSize: 14),),
                        Text("\$${product.productPrice}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 14),),
                      ],
                    ),
                  );
                }
                ),
            ),
          ],
        ),
      ),
    );
  }
}
