import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sayohat/providers/andijon_provider.dart';
// import 'package:provider/provider.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 3, 9, 20),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [const Color.fromARGB(255, 1, 21, 59), Color.fromARGB(255, 6, 40, 104), Color.fromARGB(255, 55, 86, 143),])
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(left: 20, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 40,),
                  Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: Image.asset("assets/images/andijon_logo.png"),
                            
                          ),
                          Spacer(),
                          Column(
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.power_settings_new, size: 30, color: Colors.black,)),
                              IconButton(onPressed: (){}, icon: Icon(Icons.sunny, size: 30, color: Colors.black,))
                            ],
                          )
                      
                        ],
                      ),
                      Text("F.I.O", style: TextStyle(fontSize: 30), textAlign: TextAlign.start,),
                    ],
                  )
                ],
              ),
              ),
             const SizedBox(height: 20.0),
              const Divider(color: Colors.white70, thickness: 1.0),
              SizedBox(height: 10.0,),
               ListTile(
                leading: const Icon(Icons.language, color: Colors.white),
                title: const Text(
                  'Til',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                trailing: const Text(
                  'Uz   Rus   Eng',
                  style: TextStyle(color: Colors.white70, fontSize: 16.0),
                ),
                onTap: () {},
              ),
              const SizedBox(height: 10.0),
              _buildMenuItem(Icons.train, 'Poyezd raqami'),
              _buildMenuItem(Icons.directions_transit, 'Vagon raqami'),
              _buildMenuItem(Icons.chair, 'O’rindiq raqami'),
              _buildMenuItem(Icons.chat, 'Buyurtma fikrlar'),
              _buildMenuItem(Icons.settings, 'Sozlamalar'),



              
              // Image.asset("assets/images/andijon_logo.png"),
              // ExpansionTile(
              //   title: const Row(
              //     children: [
              //       Text("Qadimiy obidalar", style: TextStyle(color: Colors.white),),
              //     ],
              //   ),
              //   children: [
              //     Tooltip(
              //       message: "Qadimiy obidalar",
              //       child: Card(
              //         child: Consumer<AndijonProvider>(
              //             builder: (context, provider, child) {
              //           return ListTile(
              //             title: const Text("Qadimiy Obidalar"),
              //             onTap: () {
              //               provider.setIndex(1);
              //               Navigator.pop(context);
              //             },
              //           );
              //         }),
              //       ),
              //     ),
              //     Tooltip(
              //       message: "Qadimiy qadamjolar",
              //       child: Card(
              //         child: Consumer<AndijonProvider>(
              //             builder: (context, provider, child) {
              //           return ListTile(
              //             title: const Text("Qadimiy qadamjolar"),
              //             onTap: () {
              //               provider.setIndex(2);
              //               Navigator.pop(context);
              //             },
              //           );
              //         }),
              //       ),
              //     ),
              //   ],
              // ),
          
          //Dam olish manzillar ExpensionTile boshlandi.
          
              ExpansionTile(
                title: const Text("Dam olish manzillari", style: TextStyle(color: Colors.white),),
                children: [
                  Tooltip(
                    message: "Istirohat bog'i",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Istirohat bog'i"),
                          onTap: () {
                            provider.setIndex(3);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                  Tooltip(
                    message: "Hayvonot bog'i",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Hayvonot bog'i"),
                          onTap: () {
                            provider.setIndex(4);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                  Tooltip(
                    message: "Karaoki bar",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Karaoki bar"),
                          onTap: () {
                            provider.setIndex(5);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                  Tooltip(
                    message: "Diskateka",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Diskateka"),
                          onTap: () {
                            provider.setIndex(6);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                  Tooltip(
                    message: "Teatr",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Teatr"),
                          onTap: () {
                            provider.setIndex(7);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                ],
              ),
          
          //Mehmonxonalar
          
          ExpansionTile(
                title: const Row(
                  children: [
                    Text("Mehmonxonalar", style: TextStyle(color: Colors.white),),
                  ],
                ),
                children: [
                  Tooltip(
                    message: "3 yulduzli",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("3 yulduzli"),
                          onTap: () {
                            provider.setIndex(1);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                  Tooltip(
                    message: "4 yulduzli",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("4 yulduzli"),
                          onTap: () {
                            provider.setIndex(2);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                  Tooltip(
                    message: "5 yulduzli",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("5 yulduzli"),
                          onTap: () {
                            provider.setIndex(2);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                ],
              ),
          
          //ovqatlanish joylari
          
          ExpansionTile(
                title: const Text("Ovqatlanish joylari", style: TextStyle(color: Colors.white),),
                children: [
                  Tooltip(
                    message: "Restoran",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Restoran"),
                          onTap: () {
                            provider.setIndex(3);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                  Tooltip(
                    message: "Kafe",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Kafe"),
                          onTap: () {
                            provider.setIndex(4);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                  Tooltip(
                    message: "Ovqatlanish joylari",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Ovqatlanish joylari"),
                          onTap: () {
                            provider.setIndex(5);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                  Tooltip(
                    message: "Choyxona",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Choyxona"),
                          onTap: () {
                            provider.setIndex(6);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                  Tooltip(
                    message: "Fast food",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Fast food"),
                          onTap: () {
                            provider.setIndex(7);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                ],
              ),
          
          //Savdo sotiq komplekslari
          
          
          ExpansionTile(
                title: const Text("Savdo sotiq komplekslari", style: TextStyle(color: Colors.white),),
                children: [
                  Tooltip(
                    message: "Kiyim kechak do'kon",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Kiyim kechak do'kon"),
                          onTap: () {
                            provider.setIndex(3);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                  Tooltip(
                    message: "Suviner do'kon",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Suviner do'kon"),
                          onTap: () {
                            provider.setIndex(4);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                  Tooltip(
                    message: "Gul do'kon",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Gul do'kon"),
                          onTap: () {
                            provider.setIndex(5);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                  Tooltip(
                    message: "Texnika do'kon",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Texnika do'kon"),
                          onTap: () {
                            provider.setIndex(6);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                  Tooltip(
                    message: "Mobile do'kon",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Mobile do'kon"),
                          onTap: () {
                            provider.setIndex(7);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                ],
              ),
        
        //Ta'lim
          
          ExpansionTile(
                title: const Text("Ta'lim", style: TextStyle(color: Colors.white),),
                children: [
                  Tooltip(
                    message: "Oliy talim",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Oliy talim"),
                          onTap: () {
                            provider.setIndex(3);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                  Tooltip(
                    message: "Kutubxona",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Kutubxona"),
                          onTap: () {
                            provider.setIndex(4);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                  Tooltip(
                    message: "O'quv markazlari",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("O'quv markazlari"),
                          onTap: () {
                            provider.setIndex(5);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                  Tooltip(
                    message: "Book kafe",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Book kafe"),
                          onTap: () {
                            provider.setIndex(6);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                ],
              ),
              
        
        //Transport
        
        ExpansionTile(
                title: const Text("Transport", style: TextStyle(color: Colors.white),),
                children: [
                  Tooltip(
                    message: "Aeraport",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Aeraport"),
                          onTap: () {
                            provider.setIndex(3);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                  Tooltip(
                    message: "Poyezd vakzal",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Poyezd vakzal"),
                          onTap: () {
                            provider.setIndex(4);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                  Tooltip(
                    message: "Avto vakzal",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Avto vakzal"),
                          onTap: () {
                            provider.setIndex(5);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                  Tooltip(
                    message: "Taxi",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Taxi"),
                          onTap: () {
                            provider.setIndex(6);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                  Tooltip(
                    message: "Yoqilg'i quyish shahobchalari",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Yoqilg'i quyish shahobchalari"),
                          onTap: () {
                            provider.setIndex(7);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                ],
              ),
        
        
        
        //Tibbiyot
        
        
        ExpansionTile(
                title: const Text("Tibbiyot", style: TextStyle(color: Colors.white),),
                children: [
                  Tooltip(
                    message: "Shifohona",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Shifohona"),
                          onTap: () {
                            provider.setIndex(3);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                  Tooltip(
                    message: "Dorixona",
                    child: Card(
                      child: Consumer<AndijonProvider>(
                          builder: (context, provider, child) {
                        return ListTile(
                          title: const Text("Dorixona"),
                          onTap: () {
                            provider.setIndex(4);
                            Navigator.pop(context);
                          },
                        );
                      }),
                    ),
                  ),
                ],
              ),
        
          
            ],
          ),
        ),
      ),
    );
  }
}





 Widget _buildMenuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 18.0),
      ),
      onTap: () {},
    );
  }
