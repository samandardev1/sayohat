import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List myItems = [
    'Andijon viloyati',
    'Buxoro viloyati'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff0192F2), Color(0xff1651DD)])),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 25,
              ),
              Center(
                child: Image.asset(
                  "assets/images/joylashuv.png",
                  width: double.infinity,
                  height: 200,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'JOYLASHUV',
                textAlign: TextAlign.end,
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        child: Column(
                          children: [
                            const Text("HUDUDNI KIRITING !", style: TextStyle(fontSize: 20),),
                            const SizedBox(
                              height: 30,
                            ),
                            DropdownMenu(
                              menuStyle: MenuStyle(backgroundColor: WidgetStateProperty.all(const Color.fromARGB(255, 255, 255, 255))),
                              // initialSelection: 'item 1',
                              hintText: 'Viloyatni tanlang',
                              width: 320,
                              menuHeight: 150,
                              dropdownMenuEntries: myItems
                                  .map((e) =>
                                      DropdownMenuEntry(value: e, label: e))
                                  .toList(),
                              onSelected: (value) {
                                debugPrint('Value: $value');
                                String qayerga = 'uyga';
                                switch (value) {
                                  case 'Andijon viloyati':
                                    qayerga = "/andijon";
                                  case 'Buxoro viloyati':
                                    qayerga = "/buxoro";
                                }
                                Navigator.pushNamed(context, qayerga);
                                FocusManager.instance.primaryFocus?.unfocus();
                                
                              },
                              enableSearch: true,
                              //requestFocusOnTap: true,
                              enableFilter: true,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
