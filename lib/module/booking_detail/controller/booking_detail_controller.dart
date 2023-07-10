import 'package:flutter/material.dart';
import '../../../state_util.dart';
import '../view/booking_detail_view.dart';

class BookingDetailController extends State<BookingDetailView>
    implements MvcController {
  static late BookingDetailController instance;
  late BookingDetailView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
