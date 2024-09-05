import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
            child: Column (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    "Toba Lake Campground", style: TextStyle(fontWeight: FontWeight.bold),

                  ),
                ),
                Text("Medan, Sumatra Utara", style: TextStyle(color:Colors.grey[500]),
                ),
              ],
            )
        ),
        const Icon (
          Icons.star, color: Colors.red,
          ),
            const Text('41'),
      ],
    ),
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

  Color color = Theme.of(context).primaryColor;
  Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
  _buildButtonColumn(color, Icons.call, "CALL"),
  _buildButtonColumn(color, Icons.near_me, "ROUTE"),
  _buildButtonColumn(color, Icons.share, "SHARE"),
  ],
  );

  Widget textSection = const Padding(padding: EdgeInsets.all(32),
    child: Text("Lake Toba (Indonesian: Danau Toba, Toba Batak; romanized: Tao Toba) is a large natural lake in North Sumatra, "
        "Indonesia, occupying the caldera of the Toba supervolcano. The lake is located in the middle of the northern part of the "
        "island of Sumatra, with a surface elevation of about 900 metres (2,953 ft), the lake stretches from 2.88°N 98.52°E to 2.35°N 99.1°E. "
        "The lake is about 100 kilometres (62 miles) long, 30 kilometres (19 mi) wide, and up to 505 metres (1,657 ft) deep. "
        "It is the largest lake in Indonesia and the largest volcanic lake in the world.[1] Toba Caldera is one of twenty geoparks in Indonesia,"
        "[2] and was recognised in July 2020 as one of the UNESCO Global Geoparks. Lake Toba is the site of a supervolcanic eruption estimated at "
        "VEI 8 that occurred 69,000 to 77,000 years ago,[6][7][8] representing a climate-changing event. Recent advances in dating methods suggest a "
        "more accurate identification of 74,000 years ago as the date.[9] It is the largest-known explosive eruption on Earth in the last 25 million years. "
        "According to the Toba catastrophe theory, the eruption had global consequences for human populations as it killed most humans living at that time and is "
        "believed to have created a population bottleneck in central east Africa and India, which affects the genetic make-up of the human worldwide population to the present."
        "[10] A recent study has cast doubt on this theory and found no evidence of substantial changes in global population.",
      softWrap: true,
    ),
  );
  
    return MaterialApp(

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter layout"),
  ),

         /* body: OrientationBuilder
      builder: (context, orientation) {
          return orientation == Orientation.portrait ?
            _buildVerticalLayout() : _buildHorizontalLayout();
    }, (buat orientasi horizontal mingdep)*/

    body: ListView(
        children: [
          Image.asset("images/Lake_Toba_and_the_surrounding_hills.jpg", width: 600, height: 240, fit: BoxFit.cover),
          titleSection, buttonSection, textSection],
    ),
       ),
    );
  }
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
     Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: color,
          ) ,
         ),
       )
      ],
    );
  }
}