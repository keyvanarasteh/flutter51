import 'package:flutter/material.dart';
import 'package:uni_task/popular_locations_information_class.dart';
import 'package:uni_task/screens/popular_location_screen.dart';

import '../common_functions/functions.dart';

class PopularLocationCard extends StatefulWidget {
  PopularLocationCard({super.key, required this.information});
  PopularLocationInformation information;

  @override
  State<PopularLocationCard> createState() => _PopularLocationCardState();
}

class _PopularLocationCardState extends State<PopularLocationCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return PopularLocationScreen(
                information: widget.information,
              );
            },
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(155, 27, 29, 45),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "${widget.information.degree}°C",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 22),
                        ),
                        Text(
                          widget.information.status,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          '${widget.information.country}, ${widget.information.city}',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Image.asset(
                getImageAccordingToStatus(widget.information.status) ??
                    "assets/nahit.png",
                width: 60,
                height: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
