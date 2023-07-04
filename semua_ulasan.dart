import 'package:flutter/material.dart';

class Semua_Ulasan extends StatefulWidget {
  final dynamic item;
  const Semua_Ulasan({Key? key, required this.item}) : super(key: key);

  @override
  State<Semua_Ulasan> createState() => _Semua_UlasanState();
}

class _Semua_UlasanState extends State<Semua_Ulasan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: Column(children: [
        Text(widget.item['judul']),
      ]),
    );
  }
}
