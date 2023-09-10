import 'package:flutter/material.dart';

void main() {
  runApp(AppBarApp());
}

class AppBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: myImageFromAssets());
  }
}

class myImageFromAssets extends StatelessWidget {
  const myImageFromAssets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Image(image: AssetImage("lib/images/Himalayan.webp")
      ),
    );
  }
}


class myImagefromNet extends StatelessWidget {
  const myImagefromNet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Image(image: NetworkImage("https://media.tenor.com/CBl3PKvjdvoAAAAM/slothilda-sloth.gif")
      ),
    );
  }
}


class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.home),
          title: const Text(
            "Inicio",
            textDirection: TextDirection.ltr,
          ),
          actions: [
            IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('This is a snackbar')));
                },
                icon: Icon(Icons.notifications))
          ]),
    );
  }
}


