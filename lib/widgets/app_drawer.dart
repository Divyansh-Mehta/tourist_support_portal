import "package:flutter/material.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:tourist_support_portal/screens/profile_screen.dart";

import "../screens/signin_screen.dart";
import "../screens/home_screen.dart";
import "../utils/color_utils.dart";
import "./profile_header.dart";

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
            child: Container(
      child: Column(
        children: <Widget>[
          ProfileHeader(),
          ListTile(
            leading: Icon(Icons.person, color: hexStringToColor("CB2B93"),),
            title: const Text("Profile"),
            onTap: () {
              Navigator.of(context).pushNamed(ProfileScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.list_alt_sharp, color: hexStringToColor("CB2B93")),
            title: const Text("Wish List"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.room_outlined, color: hexStringToColor("9546C4"),),
            title: const Text("My Trips"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.currency_exchange_rounded, color: hexStringToColor("9546C4"),),
            title: const Text("Rewards"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.info_outline, color: hexStringToColor("5E61F4"),),
            title: const Text("About"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout, color: hexStringToColor("5E61F4"),),
            title: const Text("Log Out"),
            onTap: () {
              FirebaseAuth.instance.signOut().then((value) {
                print("Signed Out");
                Navigator.of(context).pushReplacementNamed(SignInScreen.routeName);
              });
            },
          ),
        ],
      ),
    )));
  }
}

// Widget MyDrawerList() {
//   return Container(
//     padding: EdgeInsets.only(
//       top: 15,
//     ),
//     child: Column(
//       // shows the list of menu drawer
//       children: [
//         menuItem(1, "Dashboard", Icons.dashboard_outlined,
//             currentPage == DrawerSections.dashboard ? true : false),
//         menuItem(2, "Contacts", Icons.people_alt_outlined,
//             currentPage == DrawerSections.contacts ? true : false),
//         menuItem(3, "Events", Icons.event,
//             currentPage == DrawerSections.events ? true : false),
//         menuItem(4, "Notes", Icons.notes,
//             currentPage == DrawerSections.notes ? true : false),
//         Divider(),
//         menuItem(5, "Settings", Icons.settings_outlined,
//             currentPage == DrawerSections.settings ? true : false),
//         menuItem(6, "Notifications", Icons.notifications_outlined,
//             currentPage == DrawerSections.notifications ? true : false),
//         Divider(),
//         menuItem(7, "Privacy policy", Icons.privacy_tip_outlined,
//             currentPage == DrawerSections.privacy_policy ? true : false),
//         menuItem(8, "Send feedback", Icons.feedback_outlined,
//             currentPage == DrawerSections.send_feedback ? true : false),
//       ],
//     ),
//   );
// }
