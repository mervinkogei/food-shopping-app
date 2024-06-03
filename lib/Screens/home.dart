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
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent.shade400,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.notifications_active_outlined, color: Colors.white,),
          )
        ],
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                  color: Colors.grey
                )),
                enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                  color: Colors.grey
                )),
                focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                  color: Colors.orangeAccent, width: 2
                )),
                hintText: 'Search your favorite food ....',

              ),
            ),
            const SizedBox(height: 15,),
            const Text('Popular Food', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.orangeAccent),),
            const SizedBox(height: 10,),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GridView.builder(
                      // padding: EdgeInsets.all(10),
                      itemCount: 20,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2), itemBuilder: (context, index){
                        return Card(
                          child:  Column(
                            children: [
                              Expanded(
                                child: ListTile(
                                  isThreeLine: true,
                                  contentPadding: const EdgeInsets.only(left: 0, right: 0, bottom: 0),
                                  title: const Text('Title'),
                                  subtitle: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset('assets/coffee.jpg', frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                                          return Image.asset('assets/coffee.jpg', fit: BoxFit.cover,);
                                        },
                                        
                                        
                                        ), ),
                                    ],
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),
                                onPressed: (){}, child: const Text('Add to Cart'))
                            ],
                          ),
                        );
                      })
                  ],
                ),
              ),
            )

          ],
        ),
      )
    );
  }
}