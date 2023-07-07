import 'package:flutter/material.dart';
import 'package:tugas_project_uas/konfirmasi_pesanan.dart';

class Metode_Pembayaran extends StatefulWidget {
  final dynamic item;
  const Metode_Pembayaran({Key? key, required this.item}) : super(key: key);

  @override
  State<Metode_Pembayaran> createState() => _Metode_PembayaranState();
}

class _Metode_PembayaranState extends State<Metode_Pembayaran> {
  String metode_pembayaran = 'res';
  bool? coin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Metode Pembayaran'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10, left: 6, right: 3),
          child: Column(children: [
            Row(
              children: [
                Icon(
                  Icons.home,
                  size: 40,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Cash On Delivery',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Radio(
                        value: 'cod',
                        groupValue: metode_pembayaran,
                        onChanged: (val) {
                          setState(() {
                            metode_pembayaran = 'cod';
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(left: 6, top: 8)),
            Row(
              children: [
                Image.asset(
                  'assets/mandiri.jpg',
                  height: 50,
                  width: 40,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Transfer Bank Mandiri',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Radio(
                        value: 'mandiri',
                        groupValue: metode_pembayaran,
                        onChanged: (val) {
                          setState(() {
                            metode_pembayaran = 'mandiri';
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Image.network(
                  'https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/2021/02/20/indomaret-jugajpg-20210220084520.jpg',
                  height: 50,
                  width: 40,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Pembayaran melalui Indomaret',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Radio(
                        value: 'indomaret',
                        groupValue: metode_pembayaran,
                        onChanged: (val) {
                          setState(() {
                            metode_pembayaran = 'indomaret';
                          });
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Image.network(
                  'https://i0.wp.com/bursadesain.com/wp-content/uploads/2016/08/LOGO-BCA-BIRU.jpg?w=2000&ssl=1',
                  width: 40,
                  height: 50,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Bank Central Asi(BCA)',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Radio(
                        value: 'bca',
                        groupValue: metode_pembayaran,
                        onChanged: (val) {
                          setState(() {
                            metode_pembayaran = 'bca';
                          });
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Image.network(
                  'https://www.openkerja.id/wp-content/uploads/2023/03/Lowongan-Kerja-SeaBank-Indonesia-500x400.jpg',
                  width: 40,
                  height: 50,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'SeaBank',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Radio(
                        value: 'seabank',
                        groupValue: metode_pembayaran,
                        onChanged: (val) {
                          setState(() {
                            metode_pembayaran = 'seabank';
                          });
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.attach_money,
                  color: Colors.orange,
                  size: 40,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Gunakan Coin',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Checkbox(
                        value: coin,
                        onChanged: (val) {
                          setState(() {
                            coin = val;
                          });
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Biaya Penanganan:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(left: 3)),
                  Row(
                    children: [
                      const Text(
                        'Rp. 2500,-',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
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
                    return Konfirmasi_Pesanan(
                      item: widget.item,
                    );
                  }));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    'Konfirmasi',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}
