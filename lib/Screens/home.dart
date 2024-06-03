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
      drawer: Drawer(
        child: Column(
          // padding: const EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
              ),
              child: SizedBox(
                height: 20,
                child: UserAccountsDrawerHeader(
                  decoration:
                      BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orangeAccent),
                  accountName: const Text(""),
                  accountEmail: const Text("Welcome Back!"),
                  currentAccountPictureSize: const Size.square(72),
                  currentAccountPicture: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.face,
                        size: 48.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
           Expanded(
             child: Column(
              children: [
                 ListTile(
                leading: const Icon(Icons.shopping_cart_checkout),
                title: const Text(' My Cart '),
                onTap: () {
                  Navigator.pushNamed(context, '/cart');
                },
              ),
              ListTile(
                leading: const Icon(Icons.receipt_long_outlined),
                title: const Text(' Shopping History '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ],
             ),
           ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Exit'),
                onTap: () {
                   Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
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
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  backgroundColor: Colors.orangeAccent),
                                onPressed: (){}, child: const Text('Add to Cart', style: TextStyle(color: Colors.white),))
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