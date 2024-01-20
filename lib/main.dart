import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int value = 0;
  void incrementValue() {
    setState(() {
      value++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              leading: const Icon(Icons.home, color: Colors.white),
              title: const Text(
                'Counter App',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.blue[300]),
          body: SizedBox(
            // decoration: const BoxDecoration(color: Colors.red),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '$value',
                  style: const TextStyle(color: Colors.blue, fontSize: 40.0),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: incrementValue,
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsetsDirectional.only(
                            start: 40.0,
                            end: 40.0,
                            top: 15.0,
                            bottom: 15.0,
                          ),
                        ),
                      ),
                      child: const Text(
                        'Increment',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 30.0),
                    FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            if (value != 0) {
                              value--;
                            }
                          });
                        },
                        child: const Icon(Icons.remove))
                  ],
                )
              ],
            ),
          )),
    );
  }
}
