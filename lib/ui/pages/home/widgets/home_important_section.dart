part of 'widgets.dart';

class HomeImportantSection extends StatelessWidget {
  const HomeImportantSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, left: 12, right: 12,bottom: 10),
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
                    padding: const EdgeInsets.only(left: 5.0, right: 15.0),
                    child: Text("VIEW_ALL".tr,
                    ),
                  )),
              Text("THE_MOST_IMPORTANT_SECTION".tr),
            ],
          ),
          GridView.builder(
            itemCount: AppConst().gridImages.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10, childAspectRatio: 1.5, crossAxisCount: 2,
                crossAxisSpacing: 4.0
                ),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(0),
                child: InkWell(
                  onTap: () {},
                  child: new Card(
                      child: Container(
                          height: Get.width / 3.3,
                          width: Get.width / 2.8,
                          child: Image.asset(
                            AppConst().gridImages[index],
                            fit: BoxFit.cover,
                          ))),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
