import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool personIsClicked = false;
  bool timerIsClicked = false;
  bool androidIsClicked = false;
  bool iphoneIsClicked = false;
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
                    color: personIsClicked ? Colors.indigo : Colors.black,
                    onPressed: () {
                      personIsClicked = !personIsClicked;
                      setState(() {});
                      const snackbar = SnackBar(
                        content: Text("Únete a un club con otras personas"),
                      );
                      ScaffoldMessenger.of(context).removeCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    },
                    icon: const Icon(Icons.accessibility_rounded),
                  ),
                  IconButton(
                    color: timerIsClicked ? Colors.indigo : Colors.black,
                    onPressed: () {
                      timerIsClicked = !timerIsClicked;
                      setState(() {});

                      const snackbar = SnackBar(
                        content:
                            Text("Cuenta regresiva para el evento: 31 días"),
                      );
                      ScaffoldMessenger.of(context).removeCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    },
                    icon: const Icon(Icons.timer),
                  ),
                  IconButton(
                    color: androidIsClicked ? Colors.indigo : Colors.black,
                    onPressed: () {
                      androidIsClicked = !androidIsClicked;
                      setState(() {});

                      const snackbar = SnackBar(
                        content: Text("Llama al número 4155550198"),
                      );
                      ScaffoldMessenger.of(context).removeCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    },
                    icon: const Icon(Icons.phone_android),
                  ),
                  IconButton(
                    color: iphoneIsClicked ? Colors.indigo : Colors.black,
                    onPressed: () {
                      iphoneIsClicked = !iphoneIsClicked;
                      setState(() {});

                      const snackbar = SnackBar(
                        content: Text("Llama al celular 3317865113"),
                      );
                      ScaffoldMessenger.of(context).removeCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
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
