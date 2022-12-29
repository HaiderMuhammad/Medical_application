import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:medicine_app/navbar/navbar.dart';
import 'package:medicine_app/screens/home_page/home.dart';
import 'package:medicine_app/screens/lab_page/lab_test.dart';
import 'package:medicine_app/screens/offers_page/offers.dart';
import 'package:medicine_app/screens/order_page/order.dart';
import 'package:medicine_app/screens/profile_page/profile.dart';


class AppPage {
  static List<GetPage> routes = [
    GetPage(name: navbar, page: ()=> NavBarView()),
    GetPage(name: home, page: ()=> Home()),
    GetPage(name: order, page: ()=> Order()),
    GetPage(name: labtest, page: ()=> const LabTest()),
    GetPage(name: offers, page: ()=> const Offers()),
    GetPage(name: profile, page: ()=> const Profile()),
  ];


  static getNavbar() => navbar;
  static getHome() => home;
  static getOrder() => order;
  static getLabTest() => labtest;
  static getOffers() => offers;
  static getProfile() => profile;

  //

  static String navbar = '/';
  static String home = '/home';
  static String order = '/order';
  static String labtest = '/labtest';
  static String offers = '/offers';
  static String profile = '/profile';

}