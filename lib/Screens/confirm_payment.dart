import 'package:flutter/material.dart';

class ConfirmPayment extends StatefulWidget {
  const ConfirmPayment({super.key});

  @override
  State<ConfirmPayment> createState() => _ConfirmPaymentState();
}

class _ConfirmPaymentState extends State<ConfirmPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/payment.png', scale: 0.6,),
            const Text('Congratulations', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 26),),
           const SizedBox(height: 20,),
            const Text('Thank you! for Shopping with Us. \nWelcome Again!', textAlign: TextAlign.center,),
           const SizedBox(height: 30,),

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
                Navigator.pushReplacementNamed(context, '/home');
              }, child: const Text('Continue Shopping', style: TextStyle(color: Colors.white),)))

            
          ],
        ),
      ),
    );
  }
}