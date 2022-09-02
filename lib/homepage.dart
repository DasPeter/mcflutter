import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isClickedPerson = false;
  bool isClickedTimer = false;
  bool isClickedPhone1 = false;
  bool isClickedPhone2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mc Flutter'),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(border: Border.all(width: 1.0)),
            child: Column(children: [
              Row(
                // Icon and User name
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.account_circle,
                    size: 48,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Flutter McFlutter',
                        textScaleFactor: 1.5,
                      ),
                      Text(
                        'Experienced App Developer',
                      )
                    ],
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  // Address and Phone number
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text('123 Main Street'),
                    Text('(415) 555-0198')
                  ],
                ),
              ),
              Row(
                // Icons
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    color: isClickedPerson ? Colors.indigo : Colors.black,
                    onPressed: () {
                      isClickedPerson = !isClickedPerson;
                      setState(() {});
                    },
                    icon: const Icon(Icons.accessibility_rounded),
                  ),
                  IconButton(
                    color: isClickedTimer ? Colors.indigo : Colors.black,
                    onPressed: () {
                      isClickedTimer = !isClickedTimer;
                      setState(() {});
                    },
                    icon: const Icon(Icons.timer),
                  ),
                  IconButton(
                    color: isClickedPhone1 ? Colors.indigo : Colors.black,
                    onPressed: () {
                      isClickedPhone1 = !isClickedPhone1;
                      setState(() {});
                    },
                    icon: const Icon(Icons.phone_android),
                  ),
                  IconButton(
                    color: isClickedPhone2 ? Colors.indigo : Colors.black,
                    onPressed: () {
                      isClickedPhone2 = !isClickedPhone2;
                      setState(() {});
                    },
                    icon: const Icon(Icons.phone_iphone),
                  ),
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}
