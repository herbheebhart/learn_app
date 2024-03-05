import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int value = 0;
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutters'),
      ),
      body: Column(
        children: [
          Text('Hello $name '),
          Text(value.toString()),
        
       
          TextField(
            decoration: const InputDecoration(hintText: 'Enter name here'),
            onChanged: (value) {
              setState((){
                name = value;
              });
              debugPrint(name);
            },
          ),
         
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    value--;
                  });
                },
                child: const Text('Decrease'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    value++;
                  });
                },
                child: const Text('Increase'),
              ),

              ElevatedButton(
                onPressed: (){
                  setState(() {
                    value = 0;
                  });
                },
                child: const Text('reset'),
              )
            ],
          ),
          
        ],
      ),
    );
  }
}
