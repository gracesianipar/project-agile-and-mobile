import 'package:flutter/material.dart';
import 'dart:convert';

class List_GambarProvider2 extends ChangeNotifier {
  initialData() async {
    setData = list_gambar;
  }

  final list_gambar = {
    'data2': [
      {
        'img': 'assets/ubud.jpeg',
        'title': 'Titik Dua Ubud ',
        'jumlahpengunjung': '12673 pengunjung',
        'alamat': 'Bali'
      },
      {
        'img': 'assets/zoe.jpeg',
        'title': 'Zoe`s Paradise',
        'jumlahpengunjung': '1267399 pengunjung',
        'alamat': 'Samosir'
      },
      {
        'img': 'assets/shore.jpeg',
        'title': 'Shore Amora C',
        'jumlahpengunjung': '1399 pengunjung',
        'alamat': 'Bali'
      },
      {
        'img': 'assets/bajo.jpeg',
        'title': 'Labuan Bajo',
        'jumlahpengunjung': '1399 pengunjung',
        'alamat': 'NTT',
      },
      {
        'img': 'assets/toba.jpeg',
        'title': 'Danau Toba',
        'jumlahpengunjung': '1399 pengunjung',
        'alamat': 'Sumut'
      },
      {
        'img': 'assets/gili.jpeg',
        'title': 'Pulau Gili',
        'jumlahpengunjung': '1399 pengunjung',
        'alamat': 'NTB'
      }
    ]
  };

  dynamic _data;
  dynamic get data2 => _data;
  set setData(val) {
    var tmp = json.encode(val);
    _data = json.decode(tmp);

    notifyListeners();
  }
}
