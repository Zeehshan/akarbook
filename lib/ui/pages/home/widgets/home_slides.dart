part of 'widgets.dart';

class HomeSlides extends StatelessWidget {
  const HomeSlides({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(controller.proprtyList.length, (index) {
          return Padding(
            padding: EdgeInsets.only(right: 10, top: 10),
            child: InkWell(
              onTap: () {},
              child: Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3)),
                child: Container(
                  height: Get.width / 1.55,
                  width: Get.width / 1.5,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(3),
                            topLeft: Radius.circular(3)),
                        child: CachedNetworkImage(
                          imageUrl: "${controller.proprtyList[index].image}",
                          height: Get.width / 2.5,
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                                // colorFilter:
                                // ColorFilter.mode(Colors.red, BlendMode.colorBurn)
                              ),
                            ),
                          ),
                          placeholder: (context, url) =>
                              Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),

                        // Image.network(
                        //   "${controller!.proprtyList[index].image}",
                        //   fit: BoxFit.fitWidth,
                        //   height: Get.width / 2.7,
                        //   width: Get.width,
                        // ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 10),
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: CommonText(
                                  "\$${controller.proprtyList[index].price}",
                                  size: 16.0,
                                  fontWeight: FontWeight.w500,
                                )),
                            Align(
                                alignment: Alignment.centerRight,
                                child: CommonText(
                                  "${controller.proprtyList[index].place}",
                                  size: 14.0,
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                )),
                            Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CommonText(
                                          "${controller.proprtyList[index].date}",
                                          size: 12.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.calendar_today_outlined,
                                          color: kLightPrimary,
                                          size: 14,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        CommonText(
                                            "${controller.proprtyList[index].owner}",
                                            size: 12.0,
                                            fontWeight: FontWeight.w500,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.person,
                                          color: kLightPrimary,
                                          size: 14,
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
