import 'package:boat_rent/view/screen/owner/ownerhome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../logic/Controller/auth_controller.dart';
import '../../../../logic/Controller/theams_controller.dart';
import '../../../../utils/theme.dart';
import '../../favorites_screens.dart';
import '../../setting_screen.dart';

class DrawerSettingOwner extends StatelessWidget {
  const DrawerSettingOwner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthController());
    return Column(
      children: [
        ListTile(
          leading: Icon(
            Icons.phone_android,
            color: Get.isDarkMode ? whiteColor : mainColor,
          ),
          title: Text(
            // phone!
            '',
            style: TextStyle(color: Get.isDarkMode ? whiteColor : mainColor),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.color_lens,
            color: Get.isDarkMode ? whiteColor : mainColor,
          ),
          title: Text('change theme',
              style: TextStyle(color: Get.isDarkMode ? whiteColor : mainColor)),
          onTap: () {
            ThemeController().changesTheme();
          },
        ),
        ListTile(
          leading: Icon(
            Icons.language,
            color: Get.isDarkMode ? whiteColor : mainColor,
          ),
          title: Text(' Change Language',
              style: TextStyle(color: Get.isDarkMode ? whiteColor : mainColor)),
        ),
        ListTile(
          leading: Icon(
            Icons.privacy_tip,
            color: Get.isDarkMode ? whiteColor : mainColor,
          ),
          title: Text('Terms and Conditions',
              style: TextStyle(color: Get.isDarkMode ? whiteColor : mainColor)),
        ),
        ListTile(
          leading: Icon(
            Icons.directions_boat_filled_outlined,
            color: Get.isDarkMode ? whiteColor : mainColor,
          ),
          title: Text('Add Boat',
              style: TextStyle(color: Get.isDarkMode ? whiteColor : mainColor)),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => OwnerHomeScreen()));
          },
        ),
        ListTile(
          leading: Icon(Icons.favorite,
              color: Get.isDarkMode ? whiteColor : mainColor),
          title: Text('Favourite',
              style: TextStyle(color: Get.isDarkMode ? whiteColor : mainColor)),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const FavoritesScreens()));
          },
        ),
        ListTile(
          leading: Icon(Icons.settings,
              color: Get.isDarkMode ? whiteColor : mainColor),
          title: Text('Setting',
              style: TextStyle(color: Get.isDarkMode ? whiteColor : mainColor)),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SettingScreens()));
            //Get.back();
            // GetPage(name: '/setting', page: () => const SettingScreens());
            // Navigator.of(context).maybePop(MaterialPageRoute(
            //     builder: (context) => const SettingScreens()));
          },
        ),
        ListTile(
          leading: Icon(Icons.logout,
              color: Get.isDarkMode ? whiteColor : mainColor),
          title: Text('Logout',
              style: TextStyle(color: Get.isDarkMode ? whiteColor : mainColor)),
          onTap: () {
            Get.defaultDialog(
                title: 'Log out From App',
                titleStyle: TextStyle(
                    fontSize: 18,
                    color: Get.isDarkMode ? whiteColor : Colors.white,
                    fontWeight: FontWeight.bold),
                middleText: 'Are you sure you need logout',
                middleTextStyle: TextStyle(
                    fontSize: 18,
                    color: Get.isDarkMode ? whiteColor : Colors.white,
                    fontWeight: FontWeight.bold),
                backgroundColor: Colors.grey,
                radius: 10,
                textCancel: 'No',
                cancelTextColor: Get.isDarkMode ? whiteColor : Colors.black,
                textConfirm: 'yes',
                confirmTextColor: Get.isDarkMode ? whiteColor : Colors.black,
                onCancel: () {
                  Get.back();
                },
                onConfirm: () {
                  controller.signOutFromApp();
                },
                buttonColor: Get.isDarkMode ? mainColor : mainColor);
          },
        ),
      ],
    );
  }
}
