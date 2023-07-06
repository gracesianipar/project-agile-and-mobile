import 'package:flutter/material.dart';
import 'package:tugas_project_uas/pembatalan_pesanan.dart';

class Konfirmasi_Pesanan extends StatefulWidget {
  final dynamic item;

  const Konfirmasi_Pesanan({super.key, required this.item});

  @override
  State<Konfirmasi_Pesanan> createState() => _Konfirmasi_PesananState();
}

class _Konfirmasi_PesananState extends State<Konfirmasi_Pesanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Messege',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
            alignment: Alignment.center,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/ok.png'),
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  const Text(
                    'Pesan Anda telah disetujui',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    color: Color.fromARGB(255, 213, 222, 229),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Tanggal Pemesanan:'),
                            Text('Friday, 08 April 2023'),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 5)),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Metode Pembayaran:'),
                                Text('Bank Mandiri')
                              ],
                            )
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 5)),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Total Harga                 :'),
                                Text(widget.item['price'].toString())
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    color: Color.fromARGB(255, 213, 222, 229),
                    child: Row(
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Detail',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 10)),
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Text(
                                    widget.item['judul'],
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(widget.item['alamat'],
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey))
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 20)),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(
                                  widget.item['img'],
                                  height: 100,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 30, left: 6),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Check In',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 28),
                                          Text(
                                            '|',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Saturday 28 Mei 2023',
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.grey[700]),
                                      ),
                                      Text(
                                        '14.00 - 00.00',
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.grey[700]),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 30, left: 6),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Check Out',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 28),
                                          Text(
                                            '|',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Saturday 28 Mei 2023',
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.grey[700]),
                                      ),
                                      Text(
                                        '14.00 - 00.00',
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.grey[700]),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 30, left: 6),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Guests',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 28),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        '2 Orang Dewasa ',
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.grey[700]),
                                      ),
                                      Text(''),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  TextButton(
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Pembatalan_Pesanan(
                          item: widget.item,
                        );
                      }));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: const Text(
                        'Batalkan Sekarang',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ])),
      ),
    );
  }
}
