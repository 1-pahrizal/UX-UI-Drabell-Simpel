import 'package:dribleapp/util/axercise_title.dart';
import 'package:dribleapp/util/emoticon_pace.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
        ]),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32.0, vertical: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // HI RIZAL
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'HI, RIZAL !!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              '05 Maret 2022',
                              style: TextStyle(color: Colors.blue[300]),
                            )
                          ],
                        ),

                        //Notifikasi
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12)),
                          padding: const EdgeInsets.all(12),
                          child: const Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // PEncarian Bottom
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              ' Pencarian',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Apa Persahaan Kamu Code
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "Bagaimana Persaan Kamu Sekarang ?",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        )
                      ],
                    ),

                    const SizedBox(
                      height: 25,
                    ),
                    //Empat emoticon code
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            EmoticonFace(
                              emoticonpace: '🥰',
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Love Yuo',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            EmoticonFace(
                              emoticonpace: '😅',
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Smile :V',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            EmoticonFace(
                              emoticonpace: '🤣',
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Smile',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            EmoticonFace(
                              emoticonpace: '🥰',
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Love Yuo',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              //Exixes Code
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey[300],
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Exsixes',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //List View
                      Expanded(
                        child: ListView(
                          children: [
                            AppAxesxies(
                              icon: Icons.favorite,
                              exname: "Keahlian Bicara",
                              numberOfEx: 16,
                              color: Colors.orange,
                            ),
                            AppAxesxies(
                              icon: Icons.person,
                              exname: 'Skil Membaca',
                              numberOfEx: 10,
                              color: Colors.green,
                            ),
                            AppAxesxies(
                              icon: Icons.star,
                              exname: 'Skil Menulis',
                              numberOfEx: 10,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
