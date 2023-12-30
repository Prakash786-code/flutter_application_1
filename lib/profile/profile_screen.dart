import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}
class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                  )
                ],
              ),SizedBox(height: 20,),
              Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://tse1.mm.bing.net/th?id=OIP.pul_Nz8OoiiQsvyScxOKGwHaGi&pid=Api&P=0&h=180"),
                    radius: 60,
                  ),
                  Positioned(
                    top: 80,
                    left: 90,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.done, color: Colors.white),
                    ),
                  )
                ],
              ),
              Text(
                "Prakash Pandey",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "pandeprakash786@gmail.com",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 200,
                child: Center(child: Text("Upgrade to PRO")),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(24)),
                padding: EdgeInsets.all(16),
              ),
              SizedBox(
                height: 20,
              ),
              template("Privacy", Icons.shield),
              SizedBox(
                height: 20,
              ),
              template("Pruchase History", Icons.history),
              SizedBox(
                height: 20,
              ),
              template("Help & Support", Icons.help),
              SizedBox(
                height: 20,
              ),
              template("Setting", Icons.settings),
              SizedBox(
                height: 20,
              ),
              template("Invite a friend", Icons.people),
              SizedBox(
                height: 20,
              ),
              template("Logout", Icons.logout),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }

  Widget template(String text, IconData iconData) {
    return Container(
      width: 350,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.white38, borderRadius: BorderRadius.circular(24)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Icon(
              iconData,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ],
        ),
        Icon(
          Icons.arrow_right,
          color: Colors.white,
        )
      ]),
    );
  }
}
