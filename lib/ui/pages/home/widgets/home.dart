import 'package:akarbook/configs/themes/colors.dart';
import 'package:akarbook/controllers/home_controller.dart';
import 'package:akarbook/painter_example.dart';
import 'package:akarbook/ui/widget/text.dart';
import 'package:akarbook/utils/responsive.dart';
import 'package:akarbook/utils/utils.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeWidget extends StatelessWidget {
  HomeWidget({this.controller, this.scaffold});

  final HomeController? controller;
  var scaffold;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: Get.height,
            child: Stack(alignment: Alignment.topCenter, children: [
              // TrianglePainter,
              Container(
                margin: EdgeInsets.only(bottom: Get.height / 3),
                height: !Screen.isLandscape(context)? MediaQuery.of(context).size.height - 350:MediaQuery.of(context).size.width - 350,
                color: Color(0XFF002247),
              ),
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
                                scaffold.currentState.openDrawer();
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
                                controller!.tab1 = true;
                                controller!.tab2 = false;
                                controller!.tab3 = false;
                                controller!.update();
                              },
                              child: CommonText("للإيجار",size:14,),
                              color: controller!.tab1
                                  ? Colors.white
                                  : kLightPrimary,
                            )),
                            Expanded(
                                child: MaterialButton(
                              onPressed: () {
                                controller!.tab1 = false;
                                controller!.tab2 = true;
                                controller!.tab3 = false;
                                controller!.update();
                              },
                              child: CommonText("للبيع",size: 14,),
                              color: controller!.tab2
                                  ? Colors.white
                                  : kLightPrimary,
                            )),
                            Expanded(
                                child: MaterialButton(
                              onPressed: () {
                                controller!.tab1 = false;
                                controller!.tab2 = false;
                                controller!.tab3 = true;
                                controller!.update();
                              },
                              child: CommonText("للإستثمار",size: 14,),
                              color: controller!.tab3
                                  ? Colors.white
                                  : kLightPrimary,
                            )),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              hintText: "Search here",
                              contentPadding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              hintStyle: TextStyle(
                                  color: Colors.black54, fontSize: 18),
                              suffixIcon: Icon(Icons.search),
                              filled: true,
                              fillColor: Colors.white),
                        ),
                      ),
                      controller!.proprtyList == null
                          ? SizedBox()
                          : SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                    controller!.proprtyList.length, (index) {
                                  return Padding(
                                    padding: EdgeInsets.only(right: 10, top: 10),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Card(
                                        elevation: 1,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(3)),
                                        child: Container(
                                          height: Get.width / 1.55,
                                          width: Get.width / 1.5,
                                          child: Column(
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(3),
                                                    topLeft:
                                                        Radius.circular(3)),
                                                child: CachedNetworkImage(
                                                  imageUrl:
                                                      "${controller!.proprtyList[index].image}",
                                                  height: Get.width / 2.5,
                                                  imageBuilder: (context,
                                                          imageProvider) =>
                                                      Container(
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
                                                      Center(
                                                          child:
                                                              CircularProgressIndicator()),
                                                  errorWidget:
                                                      (context, url, error) =>
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
                                                padding: const EdgeInsets.only(
                                                    left: 20, right: 10),
                                                child: Column(
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: CommonText(
                                                          "\$${controller!.proprtyList[index].price}",
                                                          size: 16.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        )),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: CommonText(
                                                          "${controller!.proprtyList[index].place}",
                                                          size: 14.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          maxLines: 1,
                                                        )),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                CommonText(
                                                                  "${controller!.proprtyList[index].date}",
                                                                  size: 12.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                                SizedBox(
                                                                  width: 5,
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .calendar_today_outlined,
                                                                  color:
                                                                      kLightPrimary,
                                                                  size: 14,
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                CommonText(
                                                                    "${controller!.proprtyList[index].owner}",
                                                                    size: 12.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    maxLines:
                                                                        1),
                                                                SizedBox(
                                                                  width: 5,
                                                                ),
                                                                Icon(
                                                                  Icons.person,
                                                                  color:
                                                                      kLightPrimary,
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
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ),
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
                                        child: Image.asset(AppConst().gridImages[index],fit: BoxFit.cover,)
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
              )
            ]),
          ),

          // GridView.builder(
          //     shrinkWrap: true,
          //     physics: ScrollPhysics(),
          //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //         maxCrossAxisExtent: 200,
          //         childAspectRatio: 3 / 2,
          //         crossAxisSpacing: 20,
          //         mainAxisSpacing: 20),
          //     itemCount: 4,
          //     itemBuilder: (BuildContext ctx, index) {
          //       return Padding(
          //         padding: const EdgeInsets.only(left: 10 ),
          //         child: Card(
          //           elevation: 1,
          //           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          //           child: Container(
          //             height: Get.width / 4.5,
          //             width: Get.width / 4.5,
          //
          //             child: ClipRRect(child: Image.asset("images/home.jpg"),),
          //
          //             decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
          //           ),
          //         ),
          //       );
          //     }),
        ],
      ),
    );
  }
}
