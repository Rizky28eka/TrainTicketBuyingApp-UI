import 'package:flutter/material.dart';
import 'core.dart';
import 'shared/theme/theme_ticket_booking.dart';
import 'state_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = getTicketBookingTheme();
    return MaterialApp(
      title: 'Train Ticket Booking',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const MainNavigationView(),
    );
  }
}
