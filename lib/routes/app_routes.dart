import 'package:flutter/material.dart';
import 'package:genteel/nav.dart';
import 'package:genteel/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:genteel/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:genteel/presentation/sign_in_email_screen/sign_in_email_screen.dart';
import 'package:genteel/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:genteel/presentation/verification_code_screen/verification_code_screen.dart';
import 'package:genteel/presentation/new_password_screen/new_password_screen.dart';
import 'package:genteel/presentation/sign_in_one_screen/sign_in_one_screen.dart';
import 'package:genteel/presentation/sign_up_form_screen/sign_up_form_screen.dart';
import 'package:genteel/presentation/choose_list_screen/choose_list_screen.dart';
import 'package:genteel/presentation/choose_list_one_screen/choose_list_one_screen.dart';
import 'package:genteel/presentation/redirecting_to_homepage_screen/redirecting_to_homepage_screen.dart';
import 'package:genteel/presentation/home_screen/home_screen.dart';
import 'package:genteel/presentation/catalog_container_screen/catalog_container_screen.dart';
import 'package:genteel/presentation/catalog_blazers_screen/catalog_blazers_screen.dart';
import 'package:genteel/presentation/blazer_details_screen/blazer_details_screen.dart';
import 'package:genteel/presentation/my_bag_screen/my_bag_screen.dart';
import 'package:genteel/presentation/favorites_screen/favorites_screen.dart';
import 'package:genteel/presentation/notifications_screen/notifications_screen.dart';
import 'package:genteel/presentation/checkout_screen/checkout_screen.dart';
import 'package:genteel/presentation/add_shipping_address_screen/add_shipping_address_screen.dart';
import 'package:genteel/presentation/add_card_screen/add_card_screen.dart';
import 'package:genteel/presentation/checkout_one_screen/checkout_one_screen.dart';
import 'package:genteel/presentation/payment_successful_screen/payment_successful_screen.dart';
import 'package:genteel/presentation/ai_search_screen/ai_search_screen.dart';
import 'package:genteel/presentation/ai_chat_screen/ai_chat_screen.dart';
import 'package:genteel/presentation/ai_image_search_one_tab_container_screen/ai_image_search_one_tab_container_screen.dart';
import 'package:genteel/presentation/ai_image_search_screen/ai_image_search_screen.dart';
import 'package:genteel/presentation/filter_category_tab_container_screen/filter_category_tab_container_screen.dart';
import 'package:genteel/presentation/filter_color_tab_container_screen/filter_color_tab_container_screen.dart';
import 'package:genteel/presentation/filter_size_tab_container_screen/filter_size_tab_container_screen.dart';
import 'package:genteel/presentation/profile_overview_tab_container_screen/profile_overview_tab_container_screen.dart';
import 'package:genteel/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardingScreen = '/onboarding_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signInEmailScreen = '/sign_in_email_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String verificationCodeScreen = '/verification_code_screen';

  static const String newPasswordScreen = '/new_password_screen';

  static const String signInOneScreen = '/sign_in_one_screen';

  static const String signUpFormScreen = '/sign_up_form_screen';

  static const String chooseListScreen = '/choose_list_screen';

  static const String chooseListOneScreen = '/choose_list_one_screen';

  static const String redirectingToHomepageScreen = '/redirecting_to_homepage_screen';

  static const String homePage = '/home_page';

  static const String homeScreen = '/home_screen';

  static const String catalogPage = '/catalog_page';

  static const String catalogContainerScreen = '/catalog_container_screen';

  static const String catalogBlazersScreen = '/catalog_blazers_screen';

  static const String blazerDetailsScreen = '/blazer_details_screen';

  static const String myBagScreen = '/my_bag_screen';

  static const String favoritesScreen = '/favorites_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String checkoutScreen = '/checkout_screen';

  static const String addShippingAddressScreen = '/add_shipping_address_screen';

  static const String addCardScreen = '/add_card_screen';

  static const String checkoutOneScreen = '/checkout_one_screen';

  static const String paymentSuccessfulScreen = '/payment_successful_screen';

  static const String aiSearchScreen = '/ai_search_screen';

  static const String aiChatScreen = '/ai_chat_screen';

  static const String aiImageSearchOnePage = '/ai_image_search_one_page';

  static const String aiImageSearchOneTabContainerScreen = '/ai_image_search_one_tab_container_screen';

  static const String aiImageSearchScreen = '/ai_image_search_screen';

  static const String filterCategoryPage = '/filter_category_page';

  static const String filterCategoryTabContainerScreen = '/filter_category_tab_container_screen';

  static const String filterColorPage = '/filter_color_page';

  static const String filterColorTabContainerScreen = '/filter_color_tab_container_screen';

  static const String filterSizePage = '/filter_size_page';

  static const String filterSizeTabContainerScreen = '/filter_size_tab_container_screen';

  static const String profileOverviewPage = '/profile_overview_page';

  static const String profileOverviewTabContainerScreen = '/profile_overview_tab_container_screen';

  static const String profileSettingsPage = '/profile_settings_page';

  static const String appNavigationScreen = '/app_navigation_screen';
    static const String bottomNavigationScreen = '/nav';

  static Map<String, WidgetBuilder> routes = {
    onboardingScreen: (context) => OnboardingScreen(),
    signInScreen: (context) => SignInScreen(),
    signInEmailScreen: (context) => SignInEmailScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    verificationCodeScreen: (context) => VerificationCodeScreen(),
    newPasswordScreen: (context) => NewPasswordScreen(),
    signInOneScreen: (context) => SignInOneScreen(),
    signUpFormScreen: (context) => SignUpFormScreen(),
    chooseListScreen: (context) => ChooseListScreen(),
    chooseListOneScreen: (context) => ChooseListOneScreen(),
    redirectingToHomepageScreen: (context) => RedirectingToHomepageScreen(),
    homeScreen: (context) => HomeScreen(),
    catalogContainerScreen: (context) => CatalogContainerScreen(),
    catalogBlazersScreen: (context) => CatalogBlazersScreen(),
    blazerDetailsScreen: (context) => BlazerDetailsScreen(),
    myBagScreen: (context) => MyBagScreen(),
    favoritesScreen: (context) => FavoritesScreen(),
    notificationsScreen: (context) => NotificationsScreen(),
    checkoutScreen: (context) => CheckoutScreen(),
    addShippingAddressScreen: (context) => AddShippingAddressScreen(),
    addCardScreen: (context) => AddCardScreen(),
    checkoutOneScreen: (context) => CheckoutOneScreen(),
    paymentSuccessfulScreen: (context) => PaymentSuccessfulScreen(),
    aiSearchScreen: (context) => AiSearchScreen(),
    aiChatScreen: (context) => AiChatScreen(),
    aiImageSearchOneTabContainerScreen: (context) => AiImageSearchOneTabContainerScreen(),
    aiImageSearchScreen: (context) => AiImageSearchScreen(),
    filterCategoryTabContainerScreen: (context) => FilterCategoryTabContainerScreen(),
    filterColorTabContainerScreen: (context) => FilterColorTabContainerScreen(),
    filterSizeTabContainerScreen: (context) => FilterSizeTabContainerScreen(),
    profileOverviewTabContainerScreen: (context) => ProfileOverviewTabContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(), 
 bottomNavigationScreen: (context) => Nav(),  };
}
