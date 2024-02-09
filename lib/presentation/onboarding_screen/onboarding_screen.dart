import 'package:flutter/material.dart';
import 'package:genteel/core/app_export.dart';
import 'package:genteel/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  final ValueNotifier<int> _pageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: PageView(
          children: [
            Container(
              width: SizeUtils.width,
              height: SizeUtils.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgOnboardingOne,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    Spacer(),
                    Expanded(
                      child: Container(
                          width: SizeUtils.width,
                          padding: EdgeInsets.only(
                            bottom: 150,
                          ),
                          decoration: AppDecoration.gradientBlackToBlack,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Explore Our World",
                                style: theme.textTheme.headlineLarge,
                              ),
                              SizedBox(height: 6),
                              SizedBox(
                                width: 320,
                                child: Text(
                                  "Find the cleanest and hottest styles from the brands you love",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodyLargeNunitoGray100.copyWith(
                                    height: 1.30,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                decoration: BoxDecoration(
                  //     gradient: LinearGradient(
                  //   begin: Alignment(0.5, 0),
                  //   end: Alignment(0.5, 1),
                  //   colors: [
                  //     appTheme.black90001.withOpacity(0),
                  //     appTheme.black90001,
                  //   ],
                  // ),
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgOnboardingTwo,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: ColoredBox(
                  color: Colors.black26,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "AI Integration",
                        style: theme.textTheme.headlineLarge,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 6, bottom: 150, left: 20, right: 20),
                        child: Text(
                          "Input clothing keywords or styles for AI-powered recommendations",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyLargeNunitoGray100.copyWith(
                            height: 1.30,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgOnboarding,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                    width: SizeUtils.width,
                    padding: EdgeInsets.only(
                      bottom: 150,
                    ),
                    decoration: AppDecoration.gradientBlackToBlack,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Happy Shopping",
                          style: theme.textTheme.headlineLarge,
                        ),
                        SizedBox(height: 6),
                        SizedBox(
                          width: 339.h,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "It’s time to experience over thousands of stylish products in ",
                                  style: CustomTextStyles.bodyLargeNunitofff7f7f7,
                                ),
                                TextSpan(
                                  text: "Genteel",
                                  style: CustomTextStyles.titleMediumNunitofff7f7f7,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    )))
          ],
          onPageChanged: (value) => _pageNotifier.value = value,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ValueListenableBuilder<int>(
              valueListenable: _pageNotifier,
              builder: (BuildContext context, int value, Widget? child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 10,
                      child: AnimatedSmoothIndicator(
                        activeIndex: value,
                        count: 3,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                          spacing: 10,
                          activeDotColor: Color(0XFF77F208),
                          dotHeight: 10,
                          dotWidth: 10,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    CustomElevatedButton(
                      onPressed: () =>
                          value == 2 ? Navigator.pushReplacementNamed(context, AppRoutes.signInScreen) : _pageNotifier.value++,
                      text: value == 2 ? "Get Started" : "Next",
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}

// /// Section Widget

// class OnboardingScreen extends StatelessWidget {
//   OnboardingScreen({Key? key})
//       : super(
//           key: key,
//         );

//   int sliderIndex = 1;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         extendBody: true,
//         extendBodyBehindAppBar: true,
//         backgroundColor: appTheme.black90001.withOpacity(0.16),
//         body: 
//           child: SizedBox(
//             width: double.maxFinite,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Spacer(),
//                 Expanded(
//                   child: Container(
//                     padding: EdgeInsets.symmetric(
//                       horizontal: 17.h,
//                       vertical: 64 ,
//                     ),
//                     decoration: AppDecoration.gradientBlackToBlack,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Spacer(),
//                         _buildLogoSection(context),
//                         SizedBox(height: 27 ),
//                         SizedBox(
//                           height: 10 ,
//                           child: AnimatedSmoothIndicator(
//                             activeIndex: sliderIndex,
//                             count: 1,
//                             axisDirection: Axis.horizontal,
//                             effect: ScrollingDotsEffect(
//                               spacing: 10,
//                               activeDotColor: theme.colorScheme.primary,
//                               dotHeight: 10 ,
//                               dotWidth: 10.h,
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 30 ),
//                         CustomElevatedButton(
//                           text: "Get started",
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

 