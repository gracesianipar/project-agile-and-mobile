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
        "img1": 'assets/bagus1.jpeg',
        "price": 450000,
        "rating": 9.2,
        "img":
            "https://cf.bstatic.com/xdata/images/hotel/max1024x768/203946450.jpg?k=a9c3c31a9a6cad0982903cb5f63e485417bdedca55a4f1d3f638c66444e3a73f&o=&hp=1",
        "alamat": "300 m dari pusat kota",
        "nama": "Patrick",
        "ulasan":
            "The hotel exceeded my expectations in every way. The staff was incredibly friendly and helpful, the room was spacious and clean, and the amenities were top-notch. I would highly recommend this hotel to anyone visiting the area",
        "desc":
            "Bagus Bay Homestay memiliki teras, restaurant, dan bar di tuktuk. Homestay ini memiliki dan tempat parkiran pribadi gratis untuk Guests.",
        "desc2":
            "Bagus Bay Homestay memiliki teras, restaurant, dan bar di tuktuk. Homestay ini memiliki dan tempat parkiran pribadi gratis untuk Guests. Bagus Bay Homestay memiliki teras, restaurant, dan bar di tuktuk. Homestay ini memiliki dan tempat parkiran",
      },
      {
        "judul": "Tuk - Tuk Timbul Bungalows",
        "price": 470000,
        "rating": 9.1,
        "nama": "Mark T",
        "ulasan":
            "I couldn't be happier with my experience at this hotel. The customer service was outstanding, and the attention to detail was impressive. The room was immaculate and had all the amenities I needed. The hotel's restaurant served delicious food, and the spa services were a great way to relax. I would give this hotel a 10 out of 10.",
        "img":
            "https://cf.bstatic.com/xdata/images/hotel/max1024x768/218998852.jpg?k=7ab3b49b9bb43a64c332a0cc1b9a8af9d92d9983def45b9e0f49ecf4f2ce8a51&o=&hp=1",
        "alamat": "300 m dari pusat kota",
        "desc":
            "Bagus Bay Homestay memiliki teras, restaurant, dan bar di tuktuk. Homestay ini memiliki dan tempat parkiran pribadi gratis untuk Guests.",
        "desc2":
            "Bagus Bay Homestay memiliki teras, restaurant, dan bar di tuktuk. Homestay ini memiliki dan tempat parkiran pribadi gratis untuk Guests. Bagus Bay Homestay memiliki teras, restaurant, dan bar di tuktuk. Homestay ini memiliki dan tempat parkiran",
      },
      {
        "judul": "Zoe`s Paradise Waterfront Hotel",
        "price": 490000,
        "rating": 8.2,
        "nama": "Emily H.",
        "ulasan":
            "I had a fantastic stay at this hotel. The location was perfect, close to all the attractions and restaurants. The room was beautifully decorated and the bed was comfortable. The staff went above and beyond to ensure I had a pleasant stay.",
        "img":
            "https://cf.bstatic.com/xdata/images/hotel/max1024x768/289840687.jpg?k=14ee0e220320f2b33c4025ccd3fe417947091c30f6dc1164d1d3c306498fd3fd&o=&hp=1",
        "alamat": "300 m dari pusat kota",
        "desc":
            "Bagus Bay Homestay memiliki teras, restaurant, dan bar di tuktuk. Homestay ini memiliki dan tempat parkiran pribadi gratis untuk Guests.",
        "desc2":
            "Bagus Bay Homestay memiliki teras, restaurant, dan bar di tuktuk. Homestay ini memiliki dan tempat parkiran pribadi gratis untuk Guests. Bagus Bay Homestay memiliki teras, restaurant, dan bar di tuktuk. Homestay ini memiliki dan tempat parkiran",
      },
      {
        "judul": "Tama View",
        "price": 750000,
        "nama": "Sarah L.",
        "ulasan":
            "Staying at this hotel was a delight. The staff was welcoming and accommodating, and the room was spacious and comfortable. The hotel's location was convenient, with easy access to public transportation. The breakfast buffet offered a wide variety of options, and the on-site gym was well-equipped.",
        "rating": 9.0,
        "img":
            "https://cf.bstatic.com/xdata/images/hotel/max1024x768/417641959.jpg?k=bf57122b14b621037e4f3ff280b0e6a1c4e6a1be7bff0e5827c432eafec4e2eb&o=&hp=1",
        "alamat": "300 m dari pusat kota",
        "desc":
            "Bagus Bay Homestay memiliki teras, restaurant, dan bar di tuktuk. Homestay ini memiliki dan tempat parkiran pribadi gratis untuk Guests.",
        "desc2":
            "Bagus Bay Homestay memiliki teras, restaurant, dan bar di tuktuk. Homestay ini memiliki dan tempat parkiran pribadi gratis untuk Guests. Bagus Bay Homestay memiliki teras, restaurant, dan bar di tuktuk. Homestay ini memiliki dan tempat parkiran",
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
