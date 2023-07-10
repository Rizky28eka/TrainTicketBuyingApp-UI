import 'package:flutter/material.dart';
import '../../../shared/widgets/separator.dart';
import '../../../state_util.dart';
import '../../main_navigation/view/main_navigation_view.dart';
import '../../seat_picker/view/seat_picker_view.dart';
import '../controller/booking_detail_controller.dart';

class BookingDetailView extends StatefulWidget {
  const BookingDetailView({Key? key}) : super(key: key);

  Widget build(context, BookingDetailController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ticket",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.file_upload_outlined,
                size: 30.0,
              ),
            ),
          ),
        ],
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.offAll(MainNavigationView()),
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 24.0,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    const Positioned(
                      top: 64,
                      left: -18,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Color(0xff393e48),
                      ),
                    ),
                    const Positioned(
                      top: 64,
                      right: -18,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Color(0xff393e48),
                      ),
                    ),
                    const Positioned(
                      top: 80,
                      left: 18,
                      right: 18,
                      child: Separator(),
                    ),
                    const Positioned(
                      bottom: 135,
                      left: -18,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Color(0xff393e48),
                      ),
                    ),
                    const Positioned(
                      bottom: 135,
                      right: -18,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Color(0xff393e48),
                      ),
                    ),
                    const Positioned(
                      bottom: 150,
                      left: 18,
                      right: 18,
                      child: Separator(),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      margin: const EdgeInsets.all(30.0),
                      child: const Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Executive",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color(0xff393e48),
                                  ),
                                ),
                              ),
                              Text(
                                "18 Juni 2013",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff393e48),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 60.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "From",
                                      style: TextStyle(
                                        color: Color(0xffaeb2b4),
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    Text(
                                      "Pati",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Color(0xff393e48),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "To",
                                      style: TextStyle(
                                        color: Color(0xffaeb2b4),
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    Text(
                                      "Kudus",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Color(0xff393e48),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Depature",
                                      style: TextStyle(
                                        color: Color(0xffaeb2b4),
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    Text(
                                      "08:00 AM",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Color(0xff393e48),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Arrival",
                                      style: TextStyle(
                                        color: Color(0xffaeb2b4),
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    Text(
                                      "09:00 AM",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Color(0xff393e48),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Class",
                                      style: TextStyle(
                                        color: Color(0xffaeb2b4),
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    Text(
                                      "Executive",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Color(0xff393e48),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Seat",
                                      style: TextStyle(
                                        color: Color(0xffaeb2b4),
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    Text(
                                      "Executive, Seat 12",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Color(0xff393e48),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Passanger",
                                      style: TextStyle(
                                        color: Color(0xffaeb2b4),
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    Text(
                                      "1 Adult",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Color(0xff393e48),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Baggage",
                                      style: TextStyle(
                                        color: Color(0xffaeb2b4),
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    Text(
                                      "15 KG",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Color(0xff393e48),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      left: 0,
                      right: 0,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          "assets/images/qr.png",
                          width: 120.0,
                          height: 120.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
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
                  "Download Ticket",
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
    );
  }

  @override
  State<BookingDetailView> createState() => BookingDetailController();
}
