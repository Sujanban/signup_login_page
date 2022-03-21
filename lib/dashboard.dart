import 'package:day6_login_signup_page/login.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
        ),
        body: const Center(
          child: Text("Drawer Home"),
        ),
        drawer: Drawer(
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: [
                const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/background.png"),
                      fit: BoxFit.cover
                    )
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/profile.jpg"),
                    backgroundColor: Colors.green,
                  ),
                    accountName: Text("Sujan Ban",
                      style: TextStyle(
                      fontSize: 25
                    ),),
                    accountEmail: Text("bansujan@gmail.com"),
                  arrowColor: Colors.green,
                ),
                ListTile(
                  leading: const Icon(Icons.favorite),
                  title: const Text("Favourite"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.share),
                  title: const Text("Share"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.people),
                  title: const Text("Friends"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.category),
                  title: const Text("Category"),
                  onTap: () {},
                ),
                const Divider(
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text("Logout"),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MyLogin()));
                  },
                ),
                const Divider(
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                ),
              ],
            ),
          ),
        ),
      );
  }
}
