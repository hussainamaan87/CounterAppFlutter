import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Counter App'),
            backgroundColor:const Color(0xff2ECC71),
          ),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Center(
                  child: Text(x.toString(),
                    style: GoogleFonts.roboto(
                      fontSize: 50,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                 child: Text('Created by Amaan Hussain',
                 style: GoogleFonts.roboto(
                   fontSize: 10,
                 ),
                 ),
                )
              ],
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                backgroundColor: const Color(0xff2ECC71),
                onPressed: () {
                  x=0;
                  setState(() {

                  });
                  print('button tapped');
                  print(x.toString());
                },
                child: const Icon(Icons.exposure_zero),
              ),
              const SizedBox(width: 10,),
              FloatingActionButton(
                backgroundColor: const Color(0xff2ECC71),
                onPressed: () {
                  x++;
                  setState(() {

                  });
                  print('button tapped');
                  print(x.toString());
                },
                child: const Icon(Icons.add),
              ),
              const SizedBox(width: 10,),
              FloatingActionButton(
                backgroundColor: const Color(0xff2ECC71),
                onPressed: () {
                  x--;
                  setState(() {

                  });
                  print('button tapped');
                  print(x.toString());
                },
                child: const Icon(Icons.remove),
              )
            ],
          ),

        ));
  }

}

