import 'package:covac/Screens/addAppointment.dart';
import 'package:covac/Screens/addVaccinationCentre.dart';
import 'package:covac/Screens/viewAppointmentByServiceProvider.dart';
import 'package:flutter/material.dart';

class ServiceProviderProfile extends StatefulWidget {
  const ServiceProviderProfile({Key? key}) : super(key: key);

  @override
  _ServiceProviderProfileState createState() => _ServiceProviderProfileState();
}

class _ServiceProviderProfileState extends State<ServiceProviderProfile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Appointments',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const ViewOwnedAppointmentByServiceProvider()));
                                              },
                                              child: const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20.0,
                                                    vertical: 10.0),
                                                child: Text(
                                                  "view",
                                                  style: TextStyle(
                                                      fontSize: 20.0,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    // Spacer(),
                                    // Center(
                                    //   child: Padding(
                                    //     padding: EdgeInsets.all(20.0),
                                    //     child: Column(
                                    //       children: [
                                    //         const Text(
                                    //           '20',
                                    //           style: TextStyle(
                                    //               fontSize: 30.0,
                                    //               color: Colors.red,
                                    //               fontWeight: FontWeight.bold),
                                    //         ),
                                    //         InkWell(
                                    //           child: const Text(
                                    //             "Pending ",
                                    //           ),
                                    //           onTap: () {},
                                    //         ),
                                    //       ],
                                    //     ),
                                    //   ),
                                    // ),
                                    // Spacer(),
                                    // Center(
                                    //   child: Padding(
                                    //     padding: EdgeInsets.all(20.0),
                                    //     child: Column(
                                    //       children: const [
                                    //         Text(
                                    //           '502',
                                    //           style: TextStyle(
                                    //               fontSize: 30.0,
                                    //               color: Colors.green,
                                    //               fontWeight: FontWeight.bold),
                                    //         ),
                                    //         Text('Booked'),
                                    //       ],
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                    child: const Text(
                      "Add new vaccination centre",
                      style: TextStyle(fontSize: 17),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const AddVaccinationCentre()));
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                    child: const Text(
                      "Add appointment details",
                      style: TextStyle(fontSize: 17),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddAppointment()));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
