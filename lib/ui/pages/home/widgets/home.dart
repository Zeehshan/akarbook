part of 'widgets.dart';

class HomePage extends StatelessWidget {
  HomePage();
  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            // scaffold.currentState.openDrawer();
                          },
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: Get.width / 4,
                      ),
                      Image.asset("images/book.jpg", height: 80, width: 80),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: Get.width / 1.7,
                    height: 30,
                    child: Row(
                      children: [
                        Expanded(
                            child: MaterialButton(
                          onPressed: () {
                            controller.tab1 = true;
                            controller.tab2 = false;
                            controller.tab3 = false;
                            controller.update();
                          },
                          child: CommonText(
                            "للإيجار",
                            size: 14,
                          ),
                          color: controller.tab1 ? Colors.white : kLightPrimary,
                        )),
                        Expanded(
                            child: MaterialButton(
                          onPressed: () {
                            controller.tab1 = false;
                            controller.tab2 = true;
                            controller.tab3 = false;
                            controller.update();
                          },
                          child: CommonText(
                            "للبيع",
                            size: 14,
                          ),
                          color: controller.tab2 ? Colors.white : kLightPrimary,
                        )),
                        Expanded(
                            child: MaterialButton(
                          onPressed: () {
                            controller.tab1 = false;
                            controller.tab2 = false;
                            controller.tab3 = true;
                            controller.update();
                          },
                          child: CommonText(
                            "للإستثمار",
                            size: 14,
                          ),
                          color: controller.tab3 ? Colors.white : kLightPrimary,
                        )),
                      ],
                    ),
                  ),
                  SearchWidget(),
                  HomeSlides(),
                  Container(
                    margin: EdgeInsets.only(top: Get.height / 40),
                    height: Get.height / 1.3,
                    padding: EdgeInsets.only(top: 10, left: 5, right: 5),
                    color: Colors.grey[200],
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Card(
                                color: Colors.grey[200],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5.0, right: 15.0),
                                  child: Text("عرض الكل"),
                                )),
                            Text("أهم الأقسام"),
                          ],
                        ),
                        Expanded(
                          child: GridView.builder(
                            itemCount: AppConst().gridImages.length,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisSpacing: 5,
                                    childAspectRatio: 1.5,
                                    crossAxisCount: 2),
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: InkWell(
                                  onTap: () {},
                                  child: new Card(
                                      child: Container(
                                          height: Get.width / 3.3,
                                          width: Get.width / 2.8,
                                          child: Image.asset(
                                            AppConst().gridImages[index],
                                            fit: BoxFit.cover,
                                          )
                                          // decoration: BoxDecoration(
                                          //     image: DecorationImage(
                                          //         image: AssetImage(
                                          //           "images/home.jpg",
                                          //         ),
                                          //         fit: BoxFit.cover)),
                                          )),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Color(0XFF002247)
      ..strokeWidth = 15;

    var path = Path();

    path.moveTo(0, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.7,
        size.width * 0.5, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.9,
        size.width * 1.0, size.height * 0.8);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
