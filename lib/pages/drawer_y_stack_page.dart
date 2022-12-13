import 'package:flutter/material.dart';
import 'package:flutter_components/pages/avatar_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

class DrawerYStackPage extends StatefulWidget {
  @override
  State<DrawerYStackPage> createState() => _DrawerYStackPageState();
}

class _DrawerYStackPageState extends State<DrawerYStackPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool isInvisible = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfffbf5ff),
        key: _scaffoldKey,
        drawer: Drawer(
          elevation: 20,
          child: Column(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://images.pexels.com/photos/1606591/pexels-photo-1606591.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    ),
                  ),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        "Juan Lopez Perez",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0),
                      ),
                      Text(
                        "Colaborador",
                        style: GoogleFonts.poppins(
                          color: Colors.white70,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AvatarPage()));
                },
                leading: Icon(Icons.person),
                title: Text("Avatar Page"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AvatarPage()));
                },
                leading: Icon(Icons.warning),
                title: Text("Alert"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AvatarPage()));
                },
                leading: Icon(Icons.warning),
                title: Text("Alert 2"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AvatarPage()));
                },
                leading: Icon(Icons.edit),
                title: Text("Inputs"),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Container(
              child: IconButton(
                onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                icon: Icon(
                  Icons.home,
                  color: Color(0xff6E5CAA),
                  size: 30.0,
                ),
              ),
            ),
            Stack(
              children: [
                Positioned(
                  top: -150,
                  right: -150,
                  child: MyCircleWidget(
                    colores: [
                      Color(0xffD74286),
                      Color(0xffE991B9),
                    ],
                    radius: 400,
                  ),
                ),
                Positioned(
                  top: 80,
                  left: 30,
                  child: MyCircleWidget(
                    radius: 50,
                    colores: [
                      Color(0xff8F7DCD),
                      Color(0xff6E5CAA),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -150,
                  left: -100,
                  child: MyCircleWidget(
                    radius: 300,
                    colores: [
                      Color(0xff8F7DCD),
                      Color(0xff6E5CAA),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 180.0,
                      child: Text(
                        "Create Your Account!",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Color(0xff362274),
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    // textfield 1
                    TextField(
                      style: TextStyle(
                        color: Color(0xff6351a0),
                      ),
                      cursorColor: Color(0xff7766ad),
                      decoration: InputDecoration(
                        hintText: "Email Adress",
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xff7c6cb0),
                        ),
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Color(0xff72629d),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff7766ad)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff7766ad),
                            width: 1.4,
                          ),
                        ),
                      ),
                    ),
                    // textfield 2
                    TextField(
                      style: TextStyle(
                        color: Color(0xff6351a0),
                      ),
                      cursorColor: Color(0xff7766ad),
                      obscureText: isInvisible,
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xff7c6cb0),
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0xff72629d),
                        ),
                        suffixIcon: IconButton(
                          icon: isInvisible
                              ? Icon(
                                  Icons.visibility_off,
                                  color: Color(0xff72629d),
                                )
                              : Icon(
                                  Icons.visibility,
                                  color: Color(0xff72629d),
                                ),
                          onPressed: () {
                            isInvisible = !isInvisible;
                            //false = true
                            setState(() {});
                          },
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff7766ad)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff7766ad),
                            width: 1.4,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Container(
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffd95290),
                        borderRadius: BorderRadius.circular(40.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: Offset(4, 4),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
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
    );
  }
}

class MyCircleWidget extends StatelessWidget {
  double radius;
  List<Color> colores;

  MyCircleWidget({
    required this.radius,
    required this.colores,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: colores,
        ),
        boxShadow: [
          BoxShadow(
            color: colores[0].withOpacity(1),
            blurRadius: 20,
            offset: Offset(4, 4),
          ),
        ],
      ),
    );
  }
}
