import 'package:flutter/material.dart';
import '../../../state_util.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView>
    implements MvcController {
  static late DashboardController instance;
  late DashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int qtyAdult = 0;
  int qtyChild = 0;

  void incrementAdult() {
    setState(() {
      qtyAdult = qtyAdult + 1;
    });
  }

  void decrementAdult() {
    setState(() {
      if (qtyAdult > 0) {
        qtyAdult = qtyAdult - 1;
      }
    });
  }

  void incrementChild() {
    setState(() {
      qtyChild = qtyChild + 1;
    });
  }

  void decrementChild() {
    setState(() {
      if (qtyChild > 0) {
        qtyChild = qtyChild - 1;
      }
    });
  }
}
