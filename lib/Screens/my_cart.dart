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
        leading: GestureDetector(
          onTap: ()=>Navigator.of(context).pop(),
          child: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white,)),
        title: const Text('My Cart', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              const SizedBox(height: 20,),
              const Center(child: Text('List of items on your shopping cart:', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),)),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ListView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            children: [
                              const Divider(),
                              ListTile(
                                dense: true,
                                leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets/coffee.jpg')),
                                title: const Text('Capuccino Cofee'),
                                subtitle: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Qty: 1', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),),
                                   Row(
                                    children: [
                                      Icon(Icons.add),
                                      Icon(Icons.minimize),
                                    ],
                                   )
                                  ],
                                ),
                                trailing: const Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.delete, color: Colors.redAccent,),
                                    Text('Ksh 3200', style: TextStyle(fontSize: 12),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
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