import 'package:flutter/material.dart';
import 'package:tugas_project_uas/semua_ulasan.dart';

class Beri_Ulasan extends StatefulWidget {
  final dynamic item;
  final List<String> list_nama;
  final List<String> list_comment;
  final List<String> list_rating;

  const Beri_Ulasan({
    Key? key,
    required this.item,
    required this.list_nama,
    required this.list_comment,
    required this.list_rating,
  }) : super(key: key);

  @override
  State<Beri_Ulasan> createState() => _Beri_UlasanState();
}

List<String> list_nama = [];
List<String> list_comment = [];
List<String> list_rating = [];

class _Beri_UlasanState extends State<Beri_Ulasan> {
  TextEditingController nama = TextEditingController();
  TextEditingController comment = TextEditingController();
  TextEditingController rating = TextEditingController();

  bool? isnamaEmpty;
  bool? iscommentEmpty;
  bool? isratingEmpty;

  void addUlasan(value1, value2, value3) {
    setState(() {
      list_nama.add(value1);
      list_comment.add(value2);
      list_rating.add(value3);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Beri Ulasan'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 4,
                          child: Row(children: const [
                            Icon(
                              Icons.person,
                              color: Colors.blue,
                            ),
                            Padding(padding: EdgeInsets.only(right: 7)),
                            Text(
                              'Name',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ])),
                      Expanded(
                        flex: 15,
                        child: TextFormField(
                          autofocus: false,
                          controller: nama,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: 'your name',
                              errorText: isnamaEmpty ?? false
                                  ? 'Nama Harus Diisi'
                                  : null),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(
                              Icons.comment,
                              color: Colors.blue,
                            ),
                            Padding(padding: EdgeInsets.only(right: 7)),
                            Text(
                              'Keterangan',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 30.0),
                          child: TextFormField(
                            autofocus: false,
                            controller: comment,
                            keyboardType: TextInputType.multiline,
                            maxLines: 3,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                labelText: 'Tambah Keterangan',
                                errorText: iscommentEmpty ?? false
                                    ? 'Keterangan Harus Diisi'
                                    : null),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 4,
                          child: Row(children: const [
                            Icon(
                              Icons.rate_review,
                              color: Colors.blue,
                            ),
                            Padding(padding: EdgeInsets.only(right: 7)),
                            Text(
                              'Rating',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ])),
                      Expanded(
                        flex: 15,
                        child: TextFormField(
                          autofocus: false,
                          controller: rating,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              errorText: isnamaEmpty ?? false
                                  ? 'Rating harus diisi'
                                  : null),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              children: [
                Expanded(
                  flex: 10,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              minimumSize: Size(100, 40),
                              padding:
                                  const EdgeInsets.symmetric(vertical: 14)),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Batal'),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(5)),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(100, 40),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                          ),
                          onPressed: () {
                            if (nama.text.isEmpty) {
                              setState(() {
                                isnamaEmpty = true;
                              });
                            } else {
                              setState(() {
                                isnamaEmpty = false;
                              });
                            }
                            if (rating.text.isEmpty) {
                              setState(() {
                                isratingEmpty = true;
                              });
                            }
                            if (comment.text.isEmpty) {
                              setState(() {
                                iscommentEmpty = true;
                              });
                            } else {
                              setState(() {
                                iscommentEmpty = false;
                              });

                              addUlasan(nama.text, comment.text, rating.text);

                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Semua_Ulasan(
                                  list_nama: list_nama,
                                  list_comment: list_comment,
                                  list_rating: list_rating,
                                  item: widget.item,
                                );
                              }));
                            }
                          },
                          child: const Text('Simpan'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
