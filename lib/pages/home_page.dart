import 'package:flutter/material.dart';
import 'package:flutter_components/pages/alert_page2.dart';
import 'package:flutter_components/pages/avatar_page.dart';
import 'package:flutter_components/pages/alert_page.dart';
import 'package:flutter_components/pages/input_page.dart';
import 'package:flutter_components/pages/drawer_y_stack_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 300.0,
                width: 300.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(4.0, 4.0),
                      blurRadius: 12.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://malditopaparazzo.com.ar/wp-content/uploads/2021/05/David-Chicle.jpg",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Flutter Components",
                style: GoogleFonts.oregano(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 160.0,
                child: Divider(
                  thickness: 0.8,
                ),
              ),
              ItemComponentWidget(
                title: "Avatar",
                toPage: AvatarPage(),
              ),
              ItemComponentWidget(
                title: "Alert",
                toPage: AlertPage(),
              ),
              ItemComponentWidget(
                title: "Alert2",
                toPage: AlertPage2(),
              ),
              ItemComponentWidget(
                title: "Inputs",
                toPage: InputPage(),
              ),
              ItemComponentWidget(
                title: "Drawer y Stack",
                toPage: DrawerYStackPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemComponentWidget extends StatelessWidget {
  //variables
  String title;
  Widget toPage;

  //constructor
  ItemComponentWidget({
    required this.title,
    required this.toPage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 7.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(4.0, 4.0),
            blurRadius: 12.0,
          ),
        ],
      ),
      child: ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => toPage));
        },
        leading: Icon(
          Icons.check_circle_outline,
          color: Color(0xff636b7c),
        ),
        title: Text(title),
        subtitle: Text("Ir a detalle de $title"),
        trailing: Icon(
          Icons.chevron_right,
        ),
      ),
    );
  }
}
