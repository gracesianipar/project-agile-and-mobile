// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tgs_projek/list_penginapan_provider.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListPenginapan extends StatefulWidget {
  const ListPenginapan({super.key});

  @override
  State<ListPenginapan> createState() => _ListPenginapanState();
}

class _ListPenginapanState extends State<ListPenginapan> {
  @override
  void initState() {
    Future.microtask(() {
      Provider.of<ListPenginapanProvider>(context, listen: false).initialData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.white),
        title: const Text(
          'Penginapan Tersedia',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: body(context),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Row(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: const [
      //           Padding(padding: EdgeInsets.all(8)),
      //           Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: Text(
      //               'Tuktuk Siadong: 34 akomodasi tersedia',
      //               textAlign: TextAlign.left,
      //               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //             ),
      //           ),
      //         ],
      //       ),
      //       Card(
      //         child: Container(
      //           color: Colors.lightBlue[200],
      //           padding: EdgeInsets.all(18),
      //           child: Column(
      //             children: [
      //               Row(
      //                 children: [
      //                   Image.network(
      //                     'https://cf.bstatic.com/xdata/images/hotel/max1024x768/203946450.jpg?k=a9c3c31a9a6cad0982903cb5f63e485417bdedca55a4f1d3f638c66444e3a73f&o=&hp=1',
      //                     height: 200,
      //                   ),
      //                   Padding(
      //                     padding: const EdgeInsets.all(20.0),
      //                     child: Column(
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       children: [
      //                         Text(
      //                           'Bagus Bay Homestay',
      //                           style: TextStyle(
      //                               fontSize: 16, fontWeight: FontWeight.bold),
      //                         ),
      //                         Text(
      //                           '300 m dari pusat kota',
      //                           style:
      //                               TextStyle(fontSize: 10, color: Colors.grey),
      //                         ),
      //                         Container(
      //                           padding: EdgeInsets.only(left: 2.0, top: 10),
      //                           width: 415,
      //                           child: Text(
      //                               'Bagus Bay Homestay memiliki teras, restaurant, dan bar di tuktuk. Homestay ini memiliki dan tempat parkiran pribadi gratis untuk Guests.'),
      //                         ),
      //                         Padding(padding: EdgeInsets.only(top: 20)),
      //                         TextButton(
      //                           style: TextButton.styleFrom(
      //                               backgroundColor: Colors.blue,
      //                               foregroundColor: Colors.white,
      //                               padding: const EdgeInsets.all(10.0),
      //                               textStyle: const TextStyle(fontSize: 20),
      //                               shape: RoundedRectangleBorder(
      //                                   borderRadius: BorderRadius.zero,
      //                                   side: BorderSide(color: Colors.blue))),
      //                           onPressed: () {},
      //                           child: const Text(
      //                             'Lihat Detail',
      //                             style: TextStyle(fontSize: 15),
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //       Padding(padding: EdgeInsets.all(16.0)),
      //       Card(
      //         child: Container(
      //           color: Colors.blue[100],
      //           padding: EdgeInsets.all(18),
      //           child: Column(
      //             children: [
      //               Row(
      //                 children: [
      //                   Image.network(
      //                     'https://cf.bstatic.com/xdata/images/hotel/max1024x768/218998852.jpg?k=7ab3b49b9bb43a64c332a0cc1b9a8af9d92d9983def45b9e0f49ecf4f2ce8a51&o=&hp=1',
      //                     height: 200,
      //                   ),
      //                   Padding(
      //                     padding: const EdgeInsets.all(20.0),
      //                     child: Column(
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       children: [
      //                         Text(
      //                           'Tuk - Tuk Timbul Bungalows',
      //                           style: TextStyle(
      //                               fontSize: 16, fontWeight: FontWeight.bold),
      //                         ),
      //                         Text(
      //                           '300 m dari pusat kota',
      //                           style:
      //                               TextStyle(fontSize: 10, color: Colors.grey),
      //                         ),
      //                         Container(
      //                           padding: EdgeInsets.only(left: 2.0, top: 10),
      //                           width: 415,
      //                           child: Text(
      //                               'Tuk - Tuk Timbul Bungalows ini memiliki teras, restaurant, dan bar di tuktuk. Homestay ini memiliki dan tempat parkiran pribadi gratis untuk Guests.'),
      //                         ),
      //                         Padding(padding: EdgeInsets.only(top: 20)),
      //                         TextButton(
      //                           style: TextButton.styleFrom(
      //                               backgroundColor: Colors.blue,
      //                               foregroundColor: Colors.white,
      //                               padding: const EdgeInsets.all(10.0),
      //                               textStyle: const TextStyle(fontSize: 20),
      //                               shape: RoundedRectangleBorder(
      //                                   borderRadius: BorderRadius.zero,
      //                                   side: BorderSide(color: Colors.blue))),
      //                           onPressed: () {},
      //                           child: const Text(
      //                             'Lihat Detail',
      //                             style: TextStyle(fontSize: 15),
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //       Padding(padding: EdgeInsets.all(16.0)),
      //       Card(
      //         child: Container(
      //           color: Colors.blue[100],
      //           padding: EdgeInsets.all(18),
      //           child: Column(
      //             children: [
      //               Row(
      //                 children: [
      //                   Image.network(
      //                     'https://cf.bstatic.com/xdata/images/hotel/max1024x768/289840687.jpg?k=14ee0e220320f2b33c4025ccd3fe417947091c30f6dc1164d1d3c306498fd3fd&o=&hp=1',
      //                     height: 200,
      //                   ),
      //                   Padding(
      //                     padding: const EdgeInsets.all(20.0),
      //                     child: Column(
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       children: [
      //                         Text(
      //                           'Zoe`s Paradise Waterfront Hotel',
      //                           style: TextStyle(
      //                               fontSize: 16, fontWeight: FontWeight.bold),
      //                         ),
      //                         Text(
      //                           '300 m dari pusat kota',
      //                           style:
      //                               TextStyle(fontSize: 10, color: Colors.grey),
      //                         ),
      //                         Container(
      //                           padding: EdgeInsets.only(left: 2.0, top: 10),
      //                           width: 415,
      //                           child: Text(
      //                               'Zoe`s Paradise Waterfront Hotel ini  memiliki teras, restaurant, dan bar di tuktuk. Homestay ini memiliki dan tempat parkiran pribadi gratis untuk Guests.'),
      //                         ),
      //                         Padding(padding: EdgeInsets.only(top: 20)),
      //                         TextButton(
      //                           style: TextButton.styleFrom(
      //                               backgroundColor: Colors.blue,
      //                               foregroundColor: Colors.white,
      //                               padding: const EdgeInsets.all(10.0),
      //                               textStyle: const TextStyle(fontSize: 20),
      //                               shape: RoundedRectangleBorder(
      //                                   borderRadius: BorderRadius.zero,
      //                                   side: BorderSide(color: Colors.blue))),
      //                           onPressed: () {},
      //                           child: const Text(
      //                             'Lihat Detail',
      //                             style: TextStyle(fontSize: 15),
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //       Padding(padding: EdgeInsets.all(16.0)),
      //       Card(
      //         child: Container(
      //           color: Colors.blue[100],
      //           padding: EdgeInsets.all(18),
      //           child: Column(
      //             children: [
      //               Row(
      //                 children: [
      //                   Image.network(
      //                     'https://cf.bstatic.com/xdata/images/hotel/max1024x768/417641959.jpg?k=bf57122b14b621037e4f3ff280b0e6a1c4e6a1be7bff0e5827c432eafec4e2eb&o=&hp=1',
      //                     height: 200,
      //                   ),
      //                   Padding(
      //                     padding: const EdgeInsets.all(20.0),
      //                     child: Column(
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       children: [
      //                         Text(
      //                           'Tama View',
      //                           style: TextStyle(
      //                               fontSize: 16, fontWeight: FontWeight.bold),
      //                         ),
      //                         Text(
      //                           '300 m dari pusat kota',
      //                           style:
      //                               TextStyle(fontSize: 10, color: Colors.grey),
      //                         ),
      //                         Container(
      //                           padding: EdgeInsets.only(left: 2.0, top: 10),
      //                           width: 415,
      //                           child: Text(
      //                               'Tama View ini memiliki teras, restaurant, dan bar di tuktuk. Homestay ini memiliki dan tempat parkiran pribadi gratis untuk Guests.'),
      //                         ),
      //                         Padding(padding: EdgeInsets.only(top: 20)),
      //                         TextButton(
      //                           style: TextButton.styleFrom(
      //                               backgroundColor: Colors.blue,
      //                               foregroundColor: Colors.white,
      //                               padding: const EdgeInsets.all(10.0),
      //                               textStyle: const TextStyle(fontSize: 20),
      //                               shape: RoundedRectangleBorder(
      //                                   borderRadius: BorderRadius.zero,
      //                                   side: BorderSide(color: Colors.blue))),
      //                           onPressed: () {},
      //                           child: const Text(
      //                             'Lihat Detail',
      //                             style: TextStyle(fontSize: 15),
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

body(BuildContext context) {
  final prov = Provider.of<ListPenginapanProvider>(context);
  if (prov.data == null) {
    return const CircularProgressIndicator();
  } else {
    return SingleChildScrollView(
        child: Column(children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Tuktuk Siadong: 34 akomodasi tersedia',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      ...List.generate(prov.data['data'].length, (index) {
        var item = prov.data['data']![index];
        return SingleChildScrollView(
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Container(
              color: Colors.lightBlue[100],
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          item['img'],
                          height: 200,
                          width: 270,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item['judul'],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              item['alamat'],
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                            Container(width: 318, child: Text(item['desc'])),
                            Padding(padding: EdgeInsets.all(27.0)),
                            TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.all(8.0),
                                  textStyle: const TextStyle(fontSize: 18),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                      side: BorderSide(color: Colors.blue))),
                              onPressed: () {},
                              child: const Text(
                                'Lihat Detail',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      })
    ]));
  }
}
