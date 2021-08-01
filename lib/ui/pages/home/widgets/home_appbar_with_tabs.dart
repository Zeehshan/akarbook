part of 'widgets.dart';

class HomeAppBarWithTabs extends StatelessWidget {
  const HomeAppBarWithTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Column(
      children: [
        AppBar(
          toolbarHeight: 60,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Image.asset(
            "images/book.jpg",
            height: 60,
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        SizedBox(
          height: 0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: controller.homeTabsList
              .map((e) => MaterialButton(
                height: 30,
                padding: EdgeInsets.zero,
                    onPressed: () {
                      controller.changeStatus(e);
                    },
                    child: CommonText(
                      e.staus,
                      size: 14,
                    ),
                    color: e.isSlected ? Colors.white : kLightPrimary,
                  ))
              .toList(),
        ),
      ],
    );
  }
}
