import 'package:flutter/material.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text('My Cart', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
              Text('Here is a list of items on your shopping cart, please check before proceeding to checkout.',),
                  ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: ListTile(
                        leading: Image.asset('assets/coffee.jpg'),
                        title: const Text('Capuccino Cofee'),
                        subtitle: const Text('Ksh 3200'),
                      ),
                    );
                  }),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: SizedBox(
                  height: 52,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    icon: const Icon(Icons.payment_sharp, color: Colors.white,),
                    onPressed: (){}, label: const Text('Checkout Ksh ${30000.00}', style: TextStyle(color: Colors.white, fontSize: 18),)),
                ),
              ),
            )
        
          ],
        ),
      ),
    );
  }
}