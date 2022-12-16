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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner:false ,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
     home:homeScreen() ,
    );
  }
}
class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.orange ,
        title:Text('Hotel Reservation') ,
        centerTitle: true ,
      ),
          body: Column(
        children: [
          Image.network(
              "https://en.parisinfo.com/var/otcp/sites/images/media/1.-photos/03.-hebergement-630-x-405/hotel-enseigne-neon-630x405-c-thinkstock/31513-1-fre-FR/Hotel-enseigne-neon-630x405-C-Thinkstock.jpg"),

          Padding(
            padding: const EdgeInsets.all(8.0),

            child:
            Text("Hôtel du Printemps",style: TextStyle(fontWeight:FontWeight.bold,color:Colors.black ,fontSize: 25),),
          ),
          Text("""
          
At the Hôtel du Printemps, ideally located on a calm Parisian street next to Nation,
you will receive a warm welcome in an elegant and quiet setting.The entirely renovated boutique hotel is well-priced and equipped with the latest technology: Wi-Fi access, 16/9 flat screen TV and environmentally friendly air-conditioning.
All bedrooms have wood flooring, double glazing and are non smoking.""",
            style: TextStyle(fontSize: 12),),

          const SizedBox(height: 30),
          ElevatedButton(child: Text("Add to book"), onPressed: (){},style:ElevatedButton.styleFrom(backgroundColor: Colors.orange) ,
          ),
      ],
    ) ,
    );
  }
}

