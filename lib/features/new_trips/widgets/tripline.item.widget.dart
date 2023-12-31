import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../ui/ui.dart';
import '../../features.dart';

class TripLineItemWidget extends StatelessWidget {
  final TripModel data;

  const TripLineItemWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyTripController controller = Get.find<MyTripController>();
    return Container(
      width: Get.width - 8,
      margin: const EdgeInsets.only(top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: const Color(0xff202329),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Trip #${data.index}',
                  style: GoogleFonts.dmSans(
                    fontSize: 14,
                  ),
                ),
                IconButtonGrey(
                  onTap: () {},
                  size: 'small',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/map.png'),
                      3.widthBox,
                      Text(
                        'Navigator',
                        style: GoogleFonts.dmSans(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const CarDashboard(),
          Container(
            height: 1,
            width: Get.width,
            color: const Color(0xffFCFCFC).withOpacity(0.08),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        IconButtonGrey(
                          onTap: () {},
                          size: 'small',
                          child: Image.asset('assets/images/flag.png'),
                        ),
                        const Text(''),
                      ],
                    ),
                    8.widthBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Omaha NE',
                          style: GoogleFonts.dmSans(
                            fontSize: 14,
                          ),
                        ),
                        Text('Mon 10/13 00:00',
                            style:
                                darkTheme(context).primaryTextTheme.titleSmall),
                      ],
                    ),
                  ],
                ),
                Image.asset('assets/images/ArrowNarrowRight.png'),
                Row(
                  children: [
                    Column(
                      children: [
                        IconButtonGrey(
                          onTap: () {},
                          size: 'small',
                          child: Image.asset('assets/images/place.png'),
                        ),
                        const Text(''),
                      ],
                    ),
                    8.widthBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Oakland, CA',
                          style: GoogleFonts.dmSans(
                            fontSize: 14,
                          ),
                        ),
                        Text('Mon 10/13 00:00',
                            style:
                                darkTheme(context).primaryTextTheme.titleSmall),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (data.status != TripStatus.closed)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ActionButton(
                onTap: () => controller.onTripClick(data),
                type: 'normal',
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      data.status == TripStatus.avaliable
                          ? "Start trip"
                          : 'Details',
                      style: GoogleFonts.dmSans(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    if (data.status == TripStatus.active)
                      const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Icon(Icons.arrow_forward_ios,
                            color: Colors.white, size: 16),
                      ),
                  ],
                ),
              ),
            ),
          16.heightBox,
        ],
      ),
    );
  }
}
