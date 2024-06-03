import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        leading: GestureDetector(
          onTap: ()=>Navigator.of(context).pop(),
          child: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white,)),
        title: const Text('Checkout', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 15,),
          Center(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: const Text('Ksh 3000.00', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          const Text('Please select your preferred Payment method:'),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/mpesa.png', height: 100, width: 100, scale: 0.3,),
              Image.asset('assets/visa.png', height: 100, width: 100, scale: 0.3,),
              Image.asset('assets/paypal.png', height: 100, width: 100,),
            ],
          ),
          SizedBox(
            width: 200,
            height: 45,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  
                )
              ),
              onPressed: (){
                Navigator.of(context).pop();
                Navigator.pushReplacementNamed(context, '/payment');
              }, child: const Text('Pay Now', style: TextStyle(color: Colors.white),)))
        ],
      ),
    );
  }
}