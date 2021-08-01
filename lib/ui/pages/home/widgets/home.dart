part of 'widgets.dart';

class HomePage extends StatelessWidget {
  HomePage();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (state) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        HomeAppBarWithTabs(),
                        SearchWidget(),
                        HomeSlides(),
                        HomeImportantSection(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
