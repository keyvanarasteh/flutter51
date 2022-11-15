import 'package:flutter/material.dart';

class ViewDoctor extends StatelessWidget {
  final String doctorBrans;
  final String doctorName;
  final String imgPath;

  const ViewDoctor({
    Key? key,
    required this.doctorBrans,
    required this.doctorName,
    required this.imgPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        width: 350,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      child: Text(
                        'Looking For Your $doctorBrans',
                        style: const TextStyle(
                          color: Colors.white,
                          letterSpacing: .5,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const Text(
                      'Specialist Doctor?',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: .5,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      doctorName,
                      style: const TextStyle(
                        color: Colors.white,
                        letterSpacing: .5,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // 5 - icon
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 12,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                        onPressed: () {}, child: const Text("Ziyaret Et"))
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Image.asset(
                    'assets/images/$imgPath.png',
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
