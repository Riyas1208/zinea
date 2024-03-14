import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:zinea/model/utils/appColors.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
        title: const Text(
          'AppSettings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w700,
            fontFamily: "text1"
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Notification",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontFamily: "text1",
                fontSize: 18
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            height: 63,
            color: AppColors.boxColor,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Image.asset("assets/images/notification.png"),
                ),
                const SizedBox(width: 26),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Allow Notifications\n',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily: "text1",
                              fontSize: 14,
                              color: Colors.white
                            ),
                          ),
                          TextSpan(
                            text: 'Turn On/Off Notifications',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: "text1",
                                fontSize: 12,
                                color: AppColors.textColor
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Switch(
                  value: isSwitched,
                  onChanged: (newValue) {
                    setState(() {
                      isSwitched = newValue;
                    });
                  },
                  activeColor: Colors.white,
                  activeTrackColor: AppColors.primaryColor,
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: Colors.grey,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Network",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontFamily: "text1",
                  fontSize: 18
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            height: 63,
            color: AppColors.boxColor,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Image.asset("assets/images/network.png"),
                ),
                const SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Streaming Data Usage\n',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: "text1",
                                fontSize: 14,
                                color: Colors.white
                            ),
                          ),
                          TextSpan(
                            text: 'Automatic',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: "text1",
                                fontSize: 12,
                                color: AppColors.textColor
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Legal",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontFamily: "text1",
                  fontSize: 18
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            height: 63,
            color: AppColors.boxColor,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Image.asset("assets/images/licence.png"),
                ),
                const SizedBox(width: 20),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Open Source License',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: "text1",
                          fontSize: 16,
                          color: Colors.white
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 8,),
          Container(
            height: 63,
            color: AppColors.boxColor,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Image.asset("assets/images/privacy.png"),
                ),
                const SizedBox(width: 20),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Privacy Policy',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: "text1",
                          fontSize: 16,
                          color: Colors.white
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 8,),
          Container(
            height: 63,
            color: AppColors.boxColor,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Image.asset("assets/images/cookies.png"),
                ),
                const SizedBox(width: 20),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Cookies Preference',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: "text1",
                          fontSize: 16,
                          color: Colors.white
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 8,),
          Container(
            height: 63,
            color: AppColors.boxColor,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Image.asset("assets/images/licence.png"),
                ),
                const SizedBox(width: 20),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Terms of Use',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: "text1",
                          fontSize: 16,
                          color: Colors.white
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
