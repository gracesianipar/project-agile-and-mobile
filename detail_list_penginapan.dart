import 'package:flutter/material.dart';
import 'package:tugas_project_uas/beri_ulasan.dart';
import 'package:tugas_project_uas/detail_pemesanan.dart';
import 'package:tugas_project_uas/semua_ulasan.dart';

class DetailListPenginapan extends StatefulWidget {
  final dynamic item;
  final List<String> list_nama;
  final List<String> list_comment;
  final List<String> list_rating;

  const DetailListPenginapan(
      {Key? key,
      required this.item,
      required this.list_nama,
      required this.list_comment,
      required this.list_rating})
      : super(key: key);

  @override
  State<DetailListPenginapan> createState() => _DetailListPenginapanState();
}

class _DetailListPenginapanState extends State<DetailListPenginapan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item['judul']),
      ),
      // Tampilkan informasi detail sesuai dengan item yang dipilih
      body: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.only(top: 10, left: 3)),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            widget.item['judul'],
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 20,
                              )
                            ],
                          )
                        ],
                      ),
                      Text(
                        widget.item['alamat'],
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: Text(
                    widget.item['rating'].toString(),
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: 5)),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10)),

            Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              child: DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(widget.item['img']),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column()),
            ),
            Padding(padding: EdgeInsets.only(top: 7)),
            Container(
              padding: EdgeInsets.only(right: 5),
              color: const Color.fromARGB(255, 159, 194, 222),
              height: 25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text('Rp. ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      Text(
                        widget.item['price'].toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Text(',-',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  )
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 7)),
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.item['desc2'],
                      overflow: TextOverflow.visible,
                      maxLines: null,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 7)),
            Row(
              children: [
                const Text(
                  'Fasilitas Popular',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
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
                  style: TextStyle(color: Colors.green, fontSize: 11),
                ),
                Padding(padding: EdgeInsets.only(right: 6)),
                Icon(
                  Icons.wifi,
                  color: Colors.green,
                  size: 14,
                ),
                Text(
                  'Free Wifi',
                  style: TextStyle(color: Colors.green, fontSize: 11),
                ),
                Padding(padding: EdgeInsets.only(right: 6)),
                Icon(
                  Icons.lunch_dining,
                  color: Colors.green,
                  size: 14,
                ),
                Text(
                  'Free Breakfast',
                  style: TextStyle(color: Colors.green, fontSize: 11),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              children: [
                const Text(
                  'Ulasan Tamu',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 203, 220, 234),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                // Berpindah ke halaman Detail Penginapan
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Semua_Ulasan(
                      item: widget.item,
                      list_nama: list_nama,
                      list_comment: list_comment,
                      list_rating: list_rating);
                }));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 25,
                padding: EdgeInsets.only(top: 6),
                child: const Text(
                  'Lihat Semua Ulasan',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 9,
                    color: Colors.green,
                  ),
                ),
              ),
            ),

            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 2, right: 2),
                    color: Color.fromARGB(255, 181, 208, 230),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.item['nama'],
                          style: TextStyle(
                              fontSize: 9, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.item['ulasan'],
                          style: TextStyle(fontSize: 9),
                          overflow: TextOverflow.visible,
                          maxLines: null,
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: 6)),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 2, right: 2),
                    color: Color.fromARGB(255, 181, 208, 230),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Text(
                          widget.item['nama'],
                          style: TextStyle(
                              fontSize: 9, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.item['ulasan'],
                          style: TextStyle(fontSize: 9),
                          overflow: TextOverflow.visible,
                          maxLines: null,
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 9)),
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
                  return Rincian_Pesanan(
                    item: widget.item,
                  );
                }));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'Pesan Sekarang',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),

            // Text(widget.item['judul']),
            // Text(widget.item['alamat']),

            // Tambahkan widget lainnya sesuai kebutuhan
          ],
        ),
      ),
    );
  }
}
