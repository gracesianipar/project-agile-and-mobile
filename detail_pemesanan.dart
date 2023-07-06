import 'package:flutter/material.dart';
import 'package:tugas_project_uas/metode_pembayaran.dart';

class Rincian_Pesanan extends StatefulWidget {
  final dynamic item;
  const Rincian_Pesanan({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<Rincian_Pesanan> createState() => _Rincian_PesananState();
}

class _Rincian_PesananState extends State<Rincian_Pesanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rincian Pesanan'),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(right: 3, left: 3, top: 10),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(
                    color: const Color.fromARGB(255, 159, 194, 222), width: 1)),
            height: 145,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      Image.network(
                        widget.item['img'],
                        height: 130,
                        width: 250,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 6)),
                        Row(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  widget.item['judul'],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                              ),
                              child: Text(
                                widget.item['rating'].toString(),
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          widget.item['alamat'],
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          widget.item['desc'],
                          style: TextStyle(fontSize: 11),
                          overflow: TextOverflow.visible,
                          maxLines: null,
                          textAlign: TextAlign.justify,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.local_parking,
                              color: Colors.green,
                              size: 14,
                            ),
                            Text(
                              'Parking Gratis',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 11),
                            ),
                            Padding(padding: EdgeInsets.only(right: 6)),
                            Icon(
                              Icons.wifi,
                              color: Colors.green,
                              size: 14,
                            ),
                            Text(
                              'Free Wifi',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 11),
                            ),
                            Padding(padding: EdgeInsets.only(right: 6)),
                            Icon(
                              Icons.lunch_dining,
                              color: Colors.green,
                              size: 14,
                            ),
                            Text(
                              'Free Breakfast',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 11),
                            ),
                          ],
                        ),
                        Container(
                          height: 25,
                          padding: const EdgeInsets.only(right: 3.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.0),
                            color: const Color.fromARGB(255, 159, 194, 222),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Rp. ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                widget.item['price'].toString(),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                ',-',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                // Image.asset(widget.item['img']),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 3, right: 3),
          child: Container(
              height: 135,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(
                  color: const Color.fromARGB(255, 159, 194, 222),
                  width: 1,
                ),
              ),
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 3, left: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 6)),
                      Row(
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Rincian Pemesan Anda',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 2, right: 2),
                              color: Color.fromARGB(255, 213, 222, 229),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 50,
                                    child: Text(
                                      'Check-In',
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(right: 6)),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 2, right: 2),
                              color: Color.fromARGB(255, 213, 222, 229),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 5)),
                                  Container(
                                    height: 50,
                                    child: Text(
                                      'Check-Out',
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 3, right: 3),
          child: Container(
            height: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(
                    color: const Color.fromARGB(255, 159, 194, 222), width: 1)),
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 3, left: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 6)),
                    Column(
                      children: [
                        Row(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Ringkasan Pemesanan Anda',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Harga Awal',
                                  // style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Rp.',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(widget.item['price'].toString(),
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)
                                    // style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                Text(',-',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Discount',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text('15%',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green)
                                    // style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Biaya Penanganan',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text('Rp.1500,-',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey)
                                    // style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                              ],
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Container(
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: const Color.fromARGB(255, 159, 194, 222)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'TOTAL',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rp.',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red),
                                  ),
                                  Text(widget.item['price'].toString(),
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red)
                                      // style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                  Text(',-',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red)),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('sudah termasuk biaya pajak dan lainnya',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xCB9E9E9E))),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4, right: 4, top: 30),
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(8.0),
              textStyle: const TextStyle(fontSize: 18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
                side: BorderSide(color: Colors.blue),
              ),
            ),
            onPressed: () {
              // Berpindah ke halaman Detail Penginapan
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Metode_Pembayaran();
              }));
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: const Text(
                'Selanjutnya',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
