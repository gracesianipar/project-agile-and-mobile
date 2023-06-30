import 'package:flutter/material.dart';
import 'dart:convert';

class ListPenginapanProvider extends ChangeNotifier {
  initialData() async {
    setData = penginapan;
  }

  final penginapan = {
    "data": [
      {
        "judul": "Bagusbay",
        "img":
            "https://cf.bstatic.com/xdata/images/hotel/max1024x768/203946450.jpg?k=a9c3c31a9a6cad0982903cb5f63e485417bdedca55a4f1d3f638c66444e3a73f&o=&hp=1",
        "alamat": "300 m dari pusat kota",
        "desc":
            "Bagus Bay Homestay memiliki teras, restaurant, dan bar di tuktuk. Homestay ini memiliki dan tempat parkiran pribadi gratis untuk Guests.",
      },
      {
        "judul": "Tuk - Tuk Timbul Bungalows",
        "img":
            "https://cf.bstatic.com/xdata/images/hotel/max1024x768/218998852.jpg?k=7ab3b49b9bb43a64c332a0cc1b9a8af9d92d9983def45b9e0f49ecf4f2ce8a51&o=&hp=1",
        "alamat": "300 m dari pusat kota",
        "desc":
            "Bagus Bay Homestay memiliki teras, restaurant, dan bar di tuktuk. Homestay ini memiliki dan tempat parkiran pribadi gratis untuk Guests."
      },
      {
        "judul": "Zoe`s Paradise Waterfront Hotel",
        "img":
            "https://cf.bstatic.com/xdata/images/hotel/max1024x768/289840687.jpg?k=14ee0e220320f2b33c4025ccd3fe417947091c30f6dc1164d1d3c306498fd3fd&o=&hp=1",
        "alamat": "300 m dari pusat kota",
        "desc":
            "Bagus Bay Homestay memiliki teras, restaurant, dan bar di tuktuk. Homestay ini memiliki dan tempat parkiran pribadi gratis untuk Guests."
      },
      {
        "judul": "Tama View",
        "img":
            "https://cf.bstatic.com/xdata/images/hotel/max1024x768/417641959.jpg?k=bf57122b14b621037e4f3ff280b0e6a1c4e6a1be7bff0e5827c432eafec4e2eb&o=&hp=1",
        "alamat": "300 m dari pusat kota",
        "desc":
            "Bagus Bay Homestay memiliki teras, restaurant, dan bar di tuktuk. Homestay ini memiliki dan tempat parkiran pribadi gratis untuk Guests."
      },
    ]
  };

  // final tuktukTimbul = {
  //   "data": [
  //     {
  //       "judul": "Tuk - Tuk Timbul Bungalows",
  //       "img":
  //           "https://cf.bstatic.com/xdata/images/hotel/max1024x768/218998852.jpg?k=7ab3b49b9bb43a64c332a0cc1b9a8af9d92d9983def45b9e0f49ecf4f2ce8a51&o=&hp=1",
  //       "alamat": "300 m dari pusat kota",
  //       "desc":
  //           "Bagus Bay Homestay memiliki teras, restaurant, dan bar di tuktuk. Homestay ini memiliki dan tempat parkiran pribadi gratis untuk Guests."
  //     },
  //   ]
  // };

  // final zoeParadise = {
  //   "data": [
  //     {
  //       "judul": "Zoe`s Paradise Waterfront Hotel",
  //       "img":
  //           "https://cf.bstatic.com/xdata/images/hotel/max1024x768/289840687.jpg?k=14ee0e220320f2b33c4025ccd3fe417947091c30f6dc1164d1d3c306498fd3fd&o=&hp=1",
  //       "alamat": "300 m dari pusat kota",
  //       "desc":
  //           "Bagus Bay Homestay memiliki teras, restaurant, dan bar di tuktuk. Homestay ini memiliki dan tempat parkiran pribadi gratis untuk Guests."
  //     },
  //   ]
  // };

  // final tamaView = {
  //   "data": [
  //     {
  //       "judul": "Tama View",
  //       "img":
  //           "https://cf.bstatic.com/xdata/images/hotel/max1024x768/417641959.jpg?k=bf57122b14b621037e4f3ff280b0e6a1c4e6a1be7bff0e5827c432eafec4e2eb&o=&hp=1",
  //       "alamat": "300 m dari pusat kota",
  //       "desc":
  //           "Bagus Bay Homestay memiliki teras, restaurant, dan bar di tuktuk. Homestay ini memiliki dan tempat parkiran pribadi gratis untuk Guests."
  //     },
  //   ]
  // };

  dynamic _data;
  dynamic get data => _data;
  set setData(val) {
    var tmp = json.encode(val);
    _data = json.decode(tmp);

    notifyListeners();
  }

  ubahList(val) {
    print('val');
    if (val == 'penginapan') {
      setData = penginapan;
    }
  }
}
