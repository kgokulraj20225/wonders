import 'package:flutter/material.dart';
import 'second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _one_appState();
}

class _one_appState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: new Color(0xff075e54),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Cites around world",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          body: second_app()),
    );
  }
}

class second_app extends StatelessWidget {
  second_app({super.key});

  List<String> ab = <String>[
    'Delhi',
    'London',
    'Vancouver',
    'New York',
    'amma',
    'China',
    'chandru fr',
    'subakar',
    'harish kanish',
    'giri',
    'billu fr',
    'prasana',
    'SJC/22-25'
  ];

  List<String> c = <String>[
    'The Red Fort:      also known as Lal Qila, is a UNESCO World Heritage Site in Delhi, India that was built by the Mughal emperor Shah Jahan in the 17th century as the palace fort of his new capital, Shahjahanabad. Construction began in 1638 and took 10 years to complete in 1648. The fort is made of red sandstone and marble and stands 108 ft above Old Delhi on the right bank of the Yamuna River. Its architecture blends Islamic, Persian, Timurid, and Hindu styles.',
    'The London Eye, or the Millennium Wheel, is a cantilevered observation wheel on the South Bank of the River Thames in London. It is Europe s tallest cantilevered observation wheel, and the most popular paid tourist attraction in the United Kingdom with over three million visitors annually.',
    'count 3          ',
    'count 4          ',
    'count 5          ',
    'count 6          ',
    'count 7          ',
    'count 8          ',
    'count 9          ',
    'count 10          ',
    'count 11          ',
    'count 12          ',
    'count  13'
  ];

  List<String> ba = <String>[
    'india',
    'enna da pandra',
    'naa vittila erukkan',
    'india',
    'enga pa vandut',
    'GTA 5 d ',
    'dai python ',
    'dai na bus',
    'anna ff id send pannu',
    'da innaiki ',
    'dai tamil pdf s',
    'dai enna group',
    'student tomo'
  ];

  List<String> a1 = <String>[
    'assets/download.jpg',
    'assets/img.png',
    'assets/img2.png',
    'assets/img3.png',
    'assets/download.jpg',
    'assets/download.jpg',
    'assets/download.jpg',
    'assets/download.jpg',
    'assets/download.jpg',
    'assets/download.jpg',
    'assets/download.jpg',
    'assets/download.jpg',
    'assets/download.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: ab.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.white,
          height: 170,
          width: 500,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 10),
              Center(
                child: Container(
                  color: Colors.white70,
                  height: 150,
                  width: 358,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // CircleAvatar(
                      //   backgroundImage: AssetImage(
                      //     "${a1[index]}",
                      //   ),
                      //   radius: 55.0,
                      // ),

                      Image.asset(
                        "${a1[index]}",
                        scale: 1.1,
                      ),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Second(data: ("${c[index]}"))));
                        },
                        child: Expanded(
                          child: Container(
                            height: 135,
                            width: 197,
                            color: Colors.grey,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 30,
                                      height: 35,
                                    ),
                                    Text(
                                      "${ab[index]}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "${ba[index]}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w100),
                                    ),
                                    Text(
                                      "${ba[index]}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w100),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // Text("${ca[index]}"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          color: Colors.grey,
          height: 5,
          thickness: 0.5,
        );
      },
    );
  }
}

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Flutter GridView Demo"),
//         ),
//         body: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3,
//             crossAxisSpacing: 4.0,
//             mainAxisSpacing: 8.0,
//           ),
//           itemCount: choices.length,
//           itemBuilder: (context, index) {
//             return Center(
//               child: SelectCard(choice: choices[index]),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class Choice {
//   const Choice({required this.title, required this.icon, required this.color});
//   final String title;
//   final IconData icon;
//   final Color color;
// }
//
// const List<Choice> choices = [
//   Choice(title: 'Home', icon: Icons.home, color: Colors.red),
//   Choice(title: 'Contact', icon: Icons.contacts, color: Colors.green),
//   Choice(title: 'Map', icon: Icons.map, color: Colors.blue),
//   Choice(title: 'Phone', icon: Icons.phone, color: Colors.yellow),
//   Choice(title: 'Camera', icon: Icons.camera_alt, color: Colors.orange),
//   Choice(title: 'Setting', icon: Icons.settings, color: Colors.purple),
//   Choice(title: 'Album', icon: Icons.photo_album, color: Colors.cyan),
//   Choice(title: 'WiFi', icon: Icons.wifi, color: Colors.pink),
// ];
//
// class SelectCard extends StatelessWidget {
//   const SelectCard({Key? key, required this.choice}) : super(key: key);
//   final Choice choice;
//
//   @override
//   Widget build(BuildContext context) {
//     // final TextStyle textStyle = Theme.of(context).textTheme.headline6!;
//     return Container(
//       color: choice.color,
//       child: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Icon(choice.icon, size: 95.0),
//             SizedBox(height: 10),
//             Text(
//               choice.title,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
