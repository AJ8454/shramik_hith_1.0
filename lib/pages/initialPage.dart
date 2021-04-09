import 'package:flutter/material.dart';
import 'package:shramik_hith/pages/registerScreen.dart';
import 'package:shramik_hith/themes/media_query.dart';
import 'package:shramik_hith/themes/themes.dart';

class InitialPage extends StatefulWidget {
  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "श्रमिक हित",
                style: TextStyle(
                  fontSize: displayWidth(context) * 0.15,
                  fontWeight: FontWeight.bold,
                  color: MyTheme.logoColor,
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.30,
              ),
              Container(
                child: Material(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(25),
                  child: InkWell(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      )
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: 250,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        "LOG IN",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
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
