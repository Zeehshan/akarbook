part of 'widgets.dart';
class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width / 1.3,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            DrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Color(0XFF01203F).withOpacity(.8),
              ),
              child: Column(children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage("images/sana.jpg"),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Sana Iqbal",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontSize: 14,
                      color: Colors.orange,
                    ),
                    ),
                Expanded(
                  child: Row(
                    children: [
                      CommonText("خروج",
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          size: 18),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        height: 20,
                          color: Colors.white,
                          child: Center(
                              child: Icon(
                            (Icons.arrow_forward_outlined),
                            color: Colors.black,
                            size: 18,
                          ))),
                      Spacer(),
                      CommonText("تسجيل خروج",
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          size: 18),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        height: 20,
                          color: Colors.white,
                          child: Center(
                              child: Icon(
                            (Icons.account_balance),
                            color: Colors.black,
                            size: 18,
                          )))
                    ],
                  ),
                )
              ]),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DrawerMenuItem(
                        text: "MAIN".tr, icon: Icons.home, onTap: () {}),
                    DrawerMenuItem(
                        text: "FOR_RENT".tr,
                        icon: Icons.queue_outlined,
                        onTap: () {}),
                    DrawerMenuItem(
                        text: "FOR_SALE".tr,
                        icon: Icons.date_range_outlined,
                        onTap: () {}),
                    DrawerMenuItem(
                        text: "FOR_INVESTMENT".tr, icon: Icons.search, onTap: () {}),
                    DrawerMenuItem(
                        text: "REAT_ESTATE_SERVICES".tr,
                        icon: Icons.people_alt_rounded,
                        onTap: () {}),
                    DrawerMenuItem(
                        text: "REAT_ESTATE_AGENTS".tr,
                        icon: Icons.person_pin,
                        onTap: () {}),
                    DrawerMenuItem(
                        text: "ABOUT_US".tr, icon: Icons.help, onTap: () {}),
                    DrawerMenuItem(
                        text: "CALL_US".tr, icon: Icons.email, onTap: () {}),
                    DrawerMenuItem(
                        text: "REAT_ESTATE_BLOG".tr,
                        icon: Icons.local_gas_station,
                        onTap: () {}),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 4),
                color: Color(0XFF01203F),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "images/book.jpg",
                      height: 70,
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
              ),
            )
          ]),
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
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 20,),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("$text",
              style: Theme.of(context).textTheme.headline4!.copyWith(
                fontSize: 14
              ),
                ),
            SizedBox(
              width: 30,
            ),
            Icon(
              icon,
              color: Colors.black,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
