import 'package:flutter/material.dart';
import 'package:quick_park/presentation/start_screen/start_screen.dart';
import 'package:quick_park/presentation/ticket_screen/ticket_screen.dart';
import 'package:quick_park/presentation/direction_screen/direction_screen.dart';
import 'package:quick_park/presentation/login_screen/login_screen.dart';
import 'package:quick_park/presentation/signup_screen/signup_screen.dart';
import 'package:quick_park/presentation/park_screen/park_screen.dart';
import 'package:quick_park/presentation/cancel_screen/cancel_screen.dart';
import 'package:quick_park/presentation/vehicle_screen/vehicle_screen.dart';
import 'package:quick_park/presentation/success_screen/success_screen.dart';
import 'package:quick_park/presentation/add_vehicle_screen/add_vehicle_screen.dart';
import 'package:quick_park/presentation/profile_screen/profile_screen.dart';
import 'package:quick_park/presentation/map_screen/map_screen.dart';
import 'package:quick_park/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String startScreen = '/start_screen';

  static const String ticketScreen = '/ticket_screen';

  static const String directionScreen = '/direction_screen';

  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String parkScreen = '/park_screen';

  static const String cancelScreen = '/cancel_screen';

  static const String vehicleScreen = '/vehicle_screen';

  static const String successScreen = '/success_screen';

  static const String addVehicleScreen = '/add_vehicle_screen';

  static const String profileScreen = '/profile_screen';

  static const String mapScreen = '/map_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    startScreen: (context) => StartScreen(),
    ticketScreen: (context) => TicketScreen(),
    directionScreen: (context) => DirectionScreen(),
    loginScreen: (context) => LoginScreen(),
    signupScreen: (context) => SignupScreen(),
    parkScreen: (context) => ParkScreen(),
    cancelScreen: (context) => CancelScreen(),
    vehicleScreen: (context) => VehicleScreen(),
    successScreen: (context) => SuccessScreen(),
    addVehicleScreen: (context) => AddVehicleScreen(),
    profileScreen: (context) => ProfileScreen(),
    mapScreen: (context) => MapScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
