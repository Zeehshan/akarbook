part of 'widgets.dart';

class HomeSlides extends StatelessWidget {
  const HomeSlides({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    if(controller.proprtyList == null)
    return Container(
      height: 100,
      child: Center(child: CircularProgressIndicator()));
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Row(
            children: List.generate(controller.proprtyList!.length, (index) {
              return InkWell(
                onTap: () {},
                child: Container(
                  // height: Get.width / 1.55,
                  width: 250,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(3),
                            topLeft: Radius.circular(3)),
                        child: CachedNetworkImage(
                          imageUrl: "${controller.proprtyList![index].attachmentUrl}",
                          height: 130,
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          placeholder: (context, url) =>
                              Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) => Icon(Icons.error),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 10,bottom: 6,top: 6),
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "\$${controller.proprtyList![index].price}",
                                  style: Theme.of(context).textTheme.headline6!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14
                                  ),
                                )),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "${controller.proprtyList![index].propertyCity}",
                                  style: Theme.of(context).textTheme.headline6!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 14
                                  ),
                                )
                                ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Spacer(),
                                  Text(
                                     "${controller.proprtyList![index].agent}",
                                  style: Theme.of(context).textTheme.headline6!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 12
                                  ),
                                      ),
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
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(left: 16,right: 0,top: 10,bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(-3, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
          if(!controller.homeTabsList.firstWhere((element) => element.isSlected).isEnd)
          Center(
            child: VisibilityDetector(
              key: Key(controller.homeTabsList.firstWhere((element) => element.isSlected).staus),
              onVisibilityChanged: (visiblity) {
                if(!controller.isLoadingMore){
                  controller.loadMoreProperties();
                }
              },
              child: CustomCircularProgressIndicator(
                color: Colors.grey,
              )
            ),
          )
        ],
      ),
    );
  }
}
