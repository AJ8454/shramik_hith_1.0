import 'package:flutter/material.dart';
import 'package:shramik_hith/themes/media_query.dart';
import 'package:shramik_hith/themes/themes.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  int labourRadioSelection = 0;
  int constructorRadioSelection = 0;

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Register Account",
                          style: TextStyle(
                            fontSize: displayWidth(context) * 0.09,
                            fontWeight: FontWeight.bold,
                            color: MyTheme.logoColor,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Fill your details to enjoy shramik hith app",
                          style: TextStyle(
                            fontSize: displayWidth(context) * 0.04,
                            fontWeight: FontWeight.bold,
                            color: MyTheme.logoColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: displayHeight(context) * 0.050,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 35, right: 35, bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 25,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Full Name",
                          suffix: Icon(Icons.person),
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please enter your name";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 35, right: 35, bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 25,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: TextFormField(
                        controller: phoneController,
                        decoration: InputDecoration(
                          // prefix: Container(
                          //   child: Text('+91'),
                          // ),
                          border: InputBorder.none,
                          hintText: "Phone Number",
                          suffix: Icon(Icons.phone),
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please enter your phone number";
                          } else if (value.length < 10) {
                            return "Phone number is to short";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: displayHeight(context) * 0.005,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 5),
                  alignment: AlignmentDirectional.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Are you a ?",
                            style: TextStyle(
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: labourRadioSelection,
                                  onChanged: (value) => setState(() {
                                    labourRadioSelection = 1;
                                    constructorRadioSelection = 0;
                                  }),
                                ),
                                Text("Lobour"),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: constructorRadioSelection,
                                  onChanged: (value) => setState(() {
                                    constructorRadioSelection = 1;
                                    labourRadioSelection = 0;
                                  }),
                                ),
                                Text("Constructor"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Material(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(25),
                    child: InkWell(
                      onTap: () async {},
                      child: Container(
                        width: 250,
                        height: 50,
                        alignment: Alignment.center,
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 5),
                  alignment: AlignmentDirectional.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Already Registered ?",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => LoginScreen(),
                            //   ),
                            // );
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.grey[600],
                            ),
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
      ),
    );
  }
}
