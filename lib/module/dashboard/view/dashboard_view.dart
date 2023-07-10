import 'package:flutter/material.dart';

import '../../../shared/widgets/category_picker.dart';
import '../../../shared/widgets/datepicker.dart';
import '../../../shared/widgets/dropdown.dart';
import '../../../state_util.dart';
import '../../seat_picker/view/seat_picker_view.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hello, slex",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Badge(
              label: Text(
                "4",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              child: Icon(Icons.notifications_outlined),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Book Your Ticket Today",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Theme(
                data: ThemeData.light(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(15.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      QCategoryPicker(
                        items: const [
                          {
                            "label": "One Way",
                            "value": "1",
                          },
                          {
                            "label": "Round - Trip",
                            "value": "2",
                          },
                          {
                            "label": "Multiple City",
                            "value": "3",
                          },
                        ],
                        // validator: Validator.required,
                        value: "1",
                        onChanged: (index, label, value, item) {},
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      QDropdownField(
                        label: "From",
                        value: "Pati",
                        // validator: Validator.required,
                        items: const [
                          {
                            "label": "Pati",
                            "value": "Pati",
                          },
                          {
                            "label": "Kudus",
                            "value": "Kudus",
                          }
                        ],
                        onChanged: (value, label) {},
                      ),
                      QDropdownField(
                        label: "To",
                        value: "Kudus",
                        // validator: Validator.required,
                        items: const [
                          {
                            "label": "Pati",
                            "value": "Pati",
                          },
                          {
                            "label": "Kudus",
                            "value": "Kudus",
                          }
                        ],
                        onChanged: (value, label) {},
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: QDatePicker(
                              label: "Depart",
                              value: DateTime.now(),
                              // validator: Validator.required,
                              onChanged: (value) {},
                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          const Text(
                            "-",
                            style: TextStyle(
                                fontSize: 22.0, color: Color(0xff393e48)),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Expanded(
                            child: QDatePicker(
                              label: "Return",
                              value: DateTime.now(),
                              // validator: Validator.required,
                              onChanged: (value) {},
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        "Passengers",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xff393e48),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () => controller.decrementAdult(),
                                child: Container(
                                  margin: const EdgeInsets.only(
                                    right: 20.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: (controller.qtyAdult == 0)
                                        ? const Color(0xffdedede)
                                        : const Color(0xfffdc620),
                                  ),
                                  child: const Icon(
                                    Icons.remove,
                                    size: 20.0,
                                  ),
                                ),
                              ),
                              Text(
                                "${controller.qtyAdult} Adult",
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Color(0xff393e48),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              InkWell(
                                onTap: () => controller.incrementAdult(),
                                child: Container(
                                  margin: const EdgeInsets.only(
                                    left: 20.0,
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Color(0xfffdc620),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    size: 20.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              InkWell(
                                onTap: () => controller.decrementChild(),
                                child: Container(
                                  margin: const EdgeInsets.only(
                                    right: 20.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: (controller.qtyChild == 0)
                                        ? const Color(0xffdedede)
                                        : const Color(0xfffdc620),
                                  ),
                                  child: const Icon(
                                    Icons.remove,
                                    size: 20.0,
                                  ),
                                ),
                              ),
                              Text(
                                "${controller.qtyChild} Child",
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Color(0xff393e48),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              InkWell(
                                onTap: () => controller.incrementChild(),
                                child: Container(
                                  margin: const EdgeInsets.only(
                                    left: 20.0,
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Color(0xfffdc620),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    size: 20.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      QDropdownField(
                        label: "Train Classes",
                        value: "Executive",
                        // validator: Validator.required,
                        items: const [
                          {
                            "label": "Executive",
                            "value": "Executive",
                          },
                          {
                            "label": "Business",
                            "value": "Business",
                          },
                          {
                            "label": "Economy",
                            "value": "Economy",
                          }
                        ],
                        onChanged: (value, label) {},
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      SizedBox(
                        height: 48,
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xfffdc620),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () => Get.to(const SeatPickerView()),
                          child: const Text(
                            "Continue",
                            style: TextStyle(
                              color: Color(0xff383d47),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
