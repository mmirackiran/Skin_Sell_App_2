import 'package:flutter/material.dart';
import '../widgets/profileItem.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Center(
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    ProfileItem(
                      avatar: 'assets/images/avatar.jpeg',
                      name: "DeagleMan",
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      width: double.infinity,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(36, 49, 49, 49),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Profile",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Divider(),
                          Text("Nickname: DeagleMan",
                              style: TextStyle(color: Colors.black)),
                          Divider(),
                          Text("Username: Miraç Karma",
                              style: TextStyle(color: Colors.black)),
                          Divider(),
                          Text("E-Mail: m.mirac.kiran@live.com",
                              style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
