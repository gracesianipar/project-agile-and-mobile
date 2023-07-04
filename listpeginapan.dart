// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_project_uas/detail_list_penginapan.dart';
import 'package:tugas_project_uas/listpenginapan_provider.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListPenginapan extends StatefulWidget {
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
        title: const Text(
          'Penginapan Tersedia',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: body(context),
    );
  }
}

body(BuildContext context) {
  final prov = Provider.of<ListPenginapanProvider>(context);
  if (prov.data == null) {
    return const CircularProgressIndicator();
  } else {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Tuktuk Siadong: 34 akomodasi tersedia',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          ...List.generate(prov.data['data'].length, (index) {
            var item = prov.data['data']![index];
            return InkWell(
              onTap: () {
                // Navigasi ke halaman detail dengan menggunakan fungsi Navigator.push
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailListPenginapan(item: item),
                  ),
                );
              },
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Container(
                  color: const Color.fromARGB(255, 203, 220, 234),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.network(
                                item['img'],
                                height: 180,
                                width: 250,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item['judul'],
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    item['alamat'],
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: Text(item['desc']),
                                  ),
                                  const SizedBox(height: 27.0),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                      foregroundColor: Colors.white,
                                      padding: const EdgeInsets.all(5.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: BorderSide(color: Colors.blue),
                                      ),
                                    ),
                                    onPressed: () {
                                      //Berpindah ke halaman Detail Penginapan
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return DetailListPenginapan(item: item);
                                      }));
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: const Text(
                                        'Lihat Detail',
                                        style: TextStyle(fontSize: 12),
                                        textAlign: TextAlign.center,
                                      ),
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
              ),
            );
          }),
        ],
      ),
    );
  }
}
