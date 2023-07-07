import 'package:flutter/material.dart';

class Pembatalan_Pesanan extends StatefulWidget {
  final dynamic item;
  const Pembatalan_Pesanan({super.key, required this.item});

  @override
  State<Pembatalan_Pesanan> createState() => _Pembatalan_PesananState();
}

class _Pembatalan_PesananState extends State<Pembatalan_Pesanan> {
  bool? box1 = false;
  bool? box2 = false;
  bool? box3 = false;
  bool? box4 = false;
  bool? box5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rincian Pembatalan'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
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
                                  fontSize: 20, fontWeight: FontWeight.bold),
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
                            padding: const EdgeInsets.only(top: 30, left: 6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                      fontSize: 8, color: Colors.grey[700]),
                                ),
                                Text(
                                  '14.00 - 00.00',
                                  style: TextStyle(
                                      fontSize: 8, color: Colors.grey[700]),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, left: 6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                      fontSize: 8, color: Colors.grey[700]),
                                ),
                                Text(
                                  '14.00 - 00.00',
                                  style: TextStyle(
                                      fontSize: 8, color: Colors.grey[700]),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, left: 6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                      fontSize: 8, color: Colors.grey[700]),
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
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(width: 1, color: Colors.blue)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mengapa Anda ingin membatalkan pesanan Anda?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: box1,
                          onChanged: (val) {
                            setState(() {
                              box1 = val;
                            });
                          },
                        ),
                        Text('Terjadi Perubahan Jadwal')
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: box2,
                          onChanged: (val) {
                            setState(() {
                              box2 = val;
                            });
                          },
                        ),
                        Text('Berubah Pikiran')
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: box3,
                          onChanged: (val) {
                            setState(() {
                              box3 = val;
                            });
                          },
                        ),
                        Text('Ingin Metode Pembayaran')
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: box4,
                          onChanged: (val) {
                            setState(() {
                              box4 = val;
                            });
                          },
                        ),
                        Text('Tidak jadi liburan')
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: box5,
                          onChanged: (val) {
                            setState(() {
                              box5 = val;
                            });
                          },
                        ),
                        Text('Lainnya')
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Anda akan dikenakan denda sebesar Rp.150.000,-',
                style: TextStyle(color: Colors.red),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Pembatalan_Pesanan(
                    item: widget.item,
                  );
                }));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'Ajukan Sekarang',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
