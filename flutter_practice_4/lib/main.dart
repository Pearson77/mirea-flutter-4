import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int counter = 0;

  void increment () {
    setState(() {
      counter++;
    });
  }

  void hugeIncrement() {
    setState(() {
      counter += 10;
    });
  }

  void reset () {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Практика №4")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Товаров в корзине: $counter",
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 20),
            Container(
              height: 300,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: increment,
                    onLongPress: hugeIncrement,
                    child: Text("+", style: TextStyle(fontSize: 16)),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: reset,
                    child: Text("-", style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
