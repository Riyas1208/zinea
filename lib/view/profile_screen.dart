import 'package:flutter/material.dart';
import 'package:zinea/model/utils/appColors.dart';
import 'package:zinea/view/login_screen.dart';
import 'package:zinea/view/settings_screen.dart';
import 'package:zinea/view/your_movies_screen.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/images/profile2.png"),
            const SizedBox(height: 16,),
            const Text("Ummer Hashim",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              fontFamily: "text1",
              color: Colors.white
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/edit.png"),
                TextButton(onPressed: (){

                },
                    child: const Text("Manage Profile",
                    style: TextStyle(
                      fontFamily: "text1",
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white
                    ),))
              ],
            ),
            Card(
              elevation: 1,
              color: AppColors.boxColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Image.asset(
                  'assets/images/subscribtion.png',
                  width: 32,
                  height: 32,
                  color: Colors.white,
                ),
                title: const Text('Subscription',
                  style: TextStyle(
                    fontFamily: "text1",
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.white
                  ),),
                trailing: Image.asset(
                  'assets/images/Vector.png',
                  width: 11,
                  height: 20,
                  color: Colors.white,
                ),
                onTap: () {
                },
              ),
            ),
            const SizedBox(height: 15,),
            Card(
              elevation: 1,
              color: AppColors.boxColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Image.asset(
                  'assets/images/movie-line.png',
                  width: 32,
                  height: 32,
                  color: Colors.white,
                ),
                title: const Text('Your Movies',
                  style: TextStyle(
                      fontFamily: "text1",
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white
                  ),),
                trailing: Image.asset(
                  'assets/images/Vector.png',
                  width: 11,
                  height: 20,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const YourMoviesPage()));
                },
              ),
            ),
            const SizedBox(height: 15,),
            Card(
              elevation: 1,
              color: AppColors.boxColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Image.asset(
                  'assets/images/settings.png',
                  width: 32,
                  height: 32,
                  color: Colors.white,
                ),
                title: const Text('Settings',
                  style: TextStyle(
                      fontFamily: "text1",
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white
                  ),),
                trailing: Image.asset(
                  'assets/images/Vector.png',
                  width: 11,
                  height: 20,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const SettingsPage()));
                },
              ),
            ),
            const SizedBox(height: 15,),
            Card(
              elevation: 1,
              color: AppColors.boxColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Image.asset(
                  'assets/images/help.png',
                  width: 32,
                  height: 32,
                  color: Colors.white,
                ),
                title: const Text('Help',
                  style: TextStyle(
                      fontFamily: "text1",
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white
                  ),),
                trailing: Image.asset(
                  'assets/images/Vector.png',
                  width: 11,
                  height: 20,
                  color: Colors.white,
                ),
                onTap: () {
                },
              ),
            ),
            const SizedBox(height: 100,),
            const Divider(
              color: Colors.white,
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/Logout.png"),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
                },
                    child: const Text("Logout",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: "text1",
                      color: Colors.white
                    ),))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
