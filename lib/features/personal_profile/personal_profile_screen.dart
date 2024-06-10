import 'package:flutter/material.dart';
import 'package:reflekt_mobile_test/settings/app_colors.dart';

class PersonalProfileScreen extends StatelessWidget {
  const PersonalProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 100,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 243, 242, 246),
                  Color.fromARGB(255, 55, 36, 130),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              image: DecorationImage(
                image: const AssetImage("assets/images/bg_noise.png"),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                  AppColors.primaryTextColor.withOpacity(0.6),
                  BlendMode.multiply,
                ),
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/medpass_logo.png',
                        height: 50,
                      ),
                      const SizedBox(width: 25),
                      const Text(
                        'Complete Your \nProfile',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const ListTile(
            title: Text(
              'Personal Information',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryTextColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListBody(
              children: [
                const Text(
                  'Name',
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your name',
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset(
                        'assets/icons/user.png',
                        height: 6,
                        width: 6,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          const BorderSide(color: AppColors.primaryTextColor),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          const BorderSide(color: AppColors.primaryTextColor),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Date of Birth',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          const BorderSide(color: AppColors.primaryTextColor),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          const BorderSide(color: AppColors.primaryTextColor),
                    ),
                    hintText: 'mm/dd/yyyy',
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset(
                        'assets/icons/calendar.png',
                        height: 6,
                        width: 6,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Weight',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'lbs',
                    hintTextDirection: TextDirection.rtl,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset(
                        'assets/icons/weightmeter.png',
                        height: 6,
                        width: 6,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          const BorderSide(color: AppColors.primaryTextColor),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          const BorderSide(color: AppColors.primaryTextColor),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Height',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Feet',
                          prefixIcon: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 15),
                            child: Text('-'),
                          ),
                          hintTextDirection: TextDirection.rtl,
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Image.asset(
                              'assets/icons/ruler.png',
                              height: 6,
                              width: 6,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Inches',
                          prefixIcon: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 15),
                            child: Text('-'),
                          ),
                          hintTextDirection: TextDirection.rtl,
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Image.asset(
                              'assets/icons/ruler.png',
                              height: 6,
                              width: 6,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: AppColors.primaryTextColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: AppColors.primaryTextColor),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Weight',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Select Option',
                    suffixIcon: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: ImageIcon(
                        AssetImage("assets/icons/gender.png"),
                        size: 10,
                        color: AppColors.primaryTextColor,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          const BorderSide(color: AppColors.primaryTextColor),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          const BorderSide(color: AppColors.primaryTextColor),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Information is being collected for medical records.',
                  style: TextStyle(
                    fontSize: 13,
                    color: AppColors.tertiaryTextColor,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.buttonColor,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'continue'.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
