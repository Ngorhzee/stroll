import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll/core/app_asset.dart';
import 'package:stroll/core/app_colors.dart';
import 'package:stroll/views/dashboard/dashboard_view.dart';
import 'package:stroll/widgets/app_text.dart';
import 'package:stroll/widgets/image_loader.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: DashboardView(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Pallet.black,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            label: "Cards",
              backgroundColor: Pallet.black,
              icon: SizedBox(
            height: 44.w,
            width: 44.w,
            child: ImageLoader(
              height: 28.w,
              width: 28.w,
              path: AppAssets.cards,
            ),
          )),
          BottomNavigationBarItem(
              backgroundColor: Pallet.black,
            label: "Hot",
              icon: SizedBox(
                height: 44.w,
                width: 44.w,
                child: Stack(
                  children: [
                    Center(
                      child: ImageLoader(
                                  height: 29.w,
                                  width: 22.53.w,
                                  path: AppAssets.fire,
                                ),
                    ),
                    Positioned(
                      top: 8.w,
                        left: 28.w,
                        
                        child: Container(
                      width: 16.w,
                          height: 13.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color:Pallet.primaryAccent
                          ),

                    ))
                  ],
                ),
              )),
          BottomNavigationBarItem(
              label: "Hot",
              backgroundColor: Pallet.black,
              icon: SizedBox(
                height: 44.w,
                width: 44.w,
                child: Stack(
                  children: [
                    Center(
                      child: ImageLoader(
                        height: 24.24.w,
                        width: 26.21.w,
                        path: AppAssets.chat,
                      ),
                    ),
                    Positioned(
                        top: 8.w,
                        left: 28.w,

                        child: Container(
                          width: 16.w,
                          height: 13.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color:Pallet.primaryAccent
                          ),
                          child: Center(
                            child: AppText.headlineSmall("10",color: Pallet.black,fontSize: 7.sp,),
                          ),

                        ))
                  ],
                ),
              )),
          BottomNavigationBarItem(
              label: "Profile",
              backgroundColor: Pallet.black,
              icon: SizedBox(
                height: 44.w,
                width: 44.w,
                child: ImageLoader(
                  height: 32.w,
                  width: 32.w,
                  fit: BoxFit.cover,
                  path: AppAssets.profile,
                ),
              )),
        ],
      ),
    );
  }
}
