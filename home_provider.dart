import 'package:flutter/material.dart';
import 'dart:convert';

class List_GambarProvider extends ChangeNotifier {
  initialData() async {
    setData = list_gambar;
  }

  final list_gambar = {
    'data': [
      {
        'img': 'assets/jogja.jpeg',
        'alamat': 'Yogjakarta',
        'jumlahpengunjung': '12673 pengunjung'
      },
      {
        'img': 'assets/bali.jpg',
        'alamat': 'Bali',
        'jumlahpengunjung': '1267399 pengunjung'
      },
      {
        'img': 'assets/bandoeng.jpg',
        'alamat': 'Bandung',
        'jumlahpengunjung': '1399 pengunjung'
      }
    ]
  };

  dynamic _data;
  dynamic get data => _data;
  set setData(val) {
    var tmp = json.encode(val);
    _data = json.decode(tmp);

    notifyListeners();
  }
}
