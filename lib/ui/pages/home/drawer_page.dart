import 'package:akarbook/ui/widget/text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 175,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: Color(0XFF01203F),
                    ),
                    child: Column(children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("images/sana.jpg"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CommonText("Sana Iqbal",
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          size: 18),
                      Row(
                        children: [
                          CommonText("Logout",
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              size: 18),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                              color: Colors.white,
                              child: Center(
                                  child: Icon(
                                (Icons.arrow_forward_outlined),
                                color: Colors.black,
                                size: 18,
                              ))),
                          SizedBox(
                            width: 90,
                          ),
                          CommonText("Logout",
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              size: 18),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                              color: Colors.white,
                              child: Center(
                                  child: Icon(
                                (Icons.account_balance),
                                color: Colors.black,
                                size: 18,
                              )))
                        ],
                      )
                    ]),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      DrawerMenuItem(
                          text: "Home", icon: Icons.home, onTap: () {}),
                      DrawerMenuItem(
                          text: "Inbox",
                          icon: Icons.queue_outlined,
                          onTap: () {}),
                      DrawerMenuItem(
                          text: "Date",
                          icon: Icons.date_range_outlined,
                          onTap: () {}),
                      DrawerMenuItem(
                          text: "Search", icon: Icons.search, onTap: () {}),
                      DrawerMenuItem(
                          text: "People",
                          icon: Icons.people_alt_rounded,
                          onTap: () {}),
                      DrawerMenuItem(
                          text: "Profile",
                          icon: Icons.person_pin,
                          onTap: () {}),
                      DrawerMenuItem(
                          text: "Help", icon: Icons.looks_one, onTap: () {}),
                      DrawerMenuItem(
                          text: "Email", icon: Icons.email, onTap: () {}),
                      DrawerMenuItem(
                          text: "Logout",
                          icon: Icons.local_gas_station,
                          onTap: () {}),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  color: Color(0XFF01203F),
                  height: 160,
                  child: Column(
                    children: [
                      Image.asset(
                        "images/book.jpg",
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SocialIconButton(icon: FontAwesomeIcons.instagram),
                            SocialIconButton(icon: FontAwesomeIcons.skype),
                            SocialIconButton(icon: FontAwesomeIcons.behance),
                            SocialIconButton(icon: FontAwesomeIcons.twitter),
                            SocialIconButton(icon: FontAwesomeIcons.facebookF)
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}

class SocialIconButton extends StatelessWidget {
  const SocialIconButton({
    this.icon,
  });
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white12,
      radius: 20,
      child: Icon(
        icon,
        color: Colors.white,
        size: 15,
      ),
    );
  }
}

class DrawerMenuItem extends StatelessWidget {
  const DrawerMenuItem({this.icon, this.text, this.onTap});

  final IconData? icon;
  final String? text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0, right: 20),
            child: InkWell(
              child: Row(
                children: [
                  CommonText("$text",
                      color: Colors.black87,
                      fontWeight: FontWeight.w800,
                      fontFamily: "Cairo",
                      size: 20),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    icon,
                    color: Colors.black,
                    size: 25,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
