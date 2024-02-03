import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "ABOUT US",
          style: GoogleFonts.kanit(
            color: const Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Center(
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(36, 49, 49, 49),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                "Company: SKINSELL",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                "Address: 4. Levent, Meşe Sokağı, No:12 Kat:8",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                "District: Beşiktaş",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                "City: İstanbul",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                "Country: Türkiye",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                "Office Number: 212 325 6567",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Divider(),
                            Text(
                              "Şirketimiz, tüm prosedürlere uygun bir şekilde kurulmuş olup, Oyun içi satışlar üzerine yoğunlaşmış bir şirkettir. Global pazarda yer edinme yolunda çaba sarf eden, oyunculara istedikleri gibi satın alımlar sağlayan ve çeşitli olanaklar sunan bir kuruluştur.",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 80),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
