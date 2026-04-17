import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Containers',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        body: Align(
          alignment: Alignment.topLeft,
          child: Column(
            mainAxisSize: MainAxisSize.min,

            children: [
              Container(
                width: double.infinity,
                color: Colors.blue.shade900,
                child: Row(
              // mainAxisSize: MainAxisSize.min,

              children: [ // round box 
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16),
                  ),

                  child: const Center( // number 1
                    child: Column(
                      mainAxisSize: MainAxisSize.min,

                      children: [
                        Text(  '1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 8),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    Text(
                      'Container',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text( //made it column to write under the container text
                      'Mistakes . Performance . Where to use . Code . Visual',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                     
                  ],
                ),
              ],
            ),
              ),

              Container( // line under the container
                height: 3,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

