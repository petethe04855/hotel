import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({super.key});

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  int ContainerImage = 10;

  late DateTime currentDate;
  late String formattedCurrentDate;

  @override
  void initState() {
    super.initState();
    currentDate = DateTime.now();
    formattedCurrentDate = DateFormat('dd').format(currentDate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("จองตั๋วเครื่องบิน"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Date()
            // ListView.builder(
            //   itemCount: ContainerImage,
            //   itemBuilder: (context, index) {
            //     return Padding(
            //       padding: const EdgeInsets.symmetric(vertical: 5),
            //       child: Container(
            //           width: double.infinity,
            //           decoration: BoxDecoration(
            //               color: Colors.grey[200],
            //               borderRadius:
            //                   const BorderRadius.all(Radius.circular(10))),
            //           child: Padding(
            //               padding: const EdgeInsets.all(10.0),
            //               child: Column(
            //                   mainAxisAlignment: MainAxisAlignment.start,
            //                   crossAxisAlignment: CrossAxisAlignment.center,
            //                   children: [
            //                     Container(
            //                       width: MediaQuery.of(context).size.width,
            //                       height:
            //                           MediaQuery.of(context).size.height * 0.16,
            //                       decoration: const BoxDecoration(
            //                         image: DecorationImage(
            //                           image: NetworkImage(
            //                             'https://www.b2hotel.com/wp-content/uploads/2022/09/b2thippanatehotel-1.jpg',
            //                           ),
            //                           fit: BoxFit.fill,
            //                         ),
            //                         borderRadius: BorderRadius.all(
            //                           Radius.circular(10),
            //                         ),
            //                       ),
            //                     ),
            //                     const SizedBox(
            //                       height: 10,
            //                     ),
            //                     Container(
            //                       child: Text(
            //                         'จองตั่วเครื่องบิน',
            //                         style: TextStyle(
            //                             fontSize: 16,
            //                             fontWeight: FontWeight.bold),
            //                       ),
            //                     ),
            //                     const SizedBox(
            //                       height: 5,
            //                     ),
            //                     Container(
            //                       height: 40,
            //                       decoration: BoxDecoration(
            //                           borderRadius: const BorderRadius.all(
            //                               Radius.circular(10))),
            //                       child: Row(
            //                         children: [
            //                           Image.asset("assets/images/star_2.png",
            //                               width: 20),
            //                           Image.asset("assets/images/star_2.png",
            //                               width: 20),
            //                           Image.asset("assets/images/star_2.png",
            //                               width: 20),
            //                         ],
            //                       ),
            //                     )
            //                   ]))),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }

  Widget Date() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Text(
        'Current Date: $formattedCurrentDate',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
