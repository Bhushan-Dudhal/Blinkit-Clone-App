import 'package:flutter/material.dart';
import 'package:package_delivery_app/Widgets/UiHelper.dart';
import 'package:package_delivery_app/repository/Screens/bottomnav/nottomnavscreen.dart';

class Loginscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              UiHelper.customeImage(img: "BlinkitOnboardingScreen.png"),
              SizedBox(height: 5),
              UiHelper.customeImage(img: "image10.png"),
              SizedBox(height: 5),
              UiHelper.customeText(
                text: "India's last minute app",
                color: Color(0XFF000000),
                fontweght: FontWeight.bold,
                fontSize: 20,
                fontfamily: 'bold',
              ),
              SizedBox(height: 5),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(14),
                ),
                child: Container(
                  height: 185,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Color(0XFFFFFFFF),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      UiHelper.customeText(
                        text: "Bhushan",
                        color: Color(0XFF000000),
                        fontweght: FontWeight.w500,
                        fontSize: 14,
                        fontfamily: 'regular',
                      ),
                      SizedBox(height: 5),
                      UiHelper.customeText(
                        text: "93XXXXXX66",
                        color: Color(0XFF000000),
                        fontweght: FontWeight.w500,
                        fontSize: 14,
                        fontfamily: 'regular',
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 295,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => bottomnavscreen(),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              
                              Text(
                                "Login With ",
                                style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontFamily: 'bold',
                                ),
                              ),
                              Center(
                                child: Image.asset(
                                  "assets/images/image9.png",
                                  width: 70,
                                  height: 70,
                                ),
                              ),
                            ],
                          ),

                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),

                      UiHelper.customeText(
                        text: "Account You 93XXXXXX66",
                        color: Colors.grey,
                        fontweght: FontWeight.normal,
                        fontSize: 12,
                      ),
                      SizedBox(height: 11),
                      Text(
                        "or login with phone number",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          fontFamily: 'regular',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
