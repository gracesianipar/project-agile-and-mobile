import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_project_uas/home_provider.dart';
import 'package:tugas_project_uas/home_provider2.dart';

import 'package:tugas_project_uas/listpeginapan.dart';

class Screen_Home extends StatefulWidget {
  const Screen_Home({super.key});

  @override
  State<Screen_Home> createState() => _Screen_HomeState();
}

class _Screen_HomeState extends State<Screen_Home> {
  //Local Variabel
  TextEditingController destinasiController = TextEditingController();
  TextEditingController checkinController = TextEditingController();
  TextEditingController checkoutController = TextEditingController();
  TextEditingController guestsController = TextEditingController();

  //status field destinasi, checkin, checkout dan guests kosong
  bool? isDestinationEmpty;
  bool? isCheckInEmpty;
  bool? isCheckOutEmpty;
  bool? isGuestsEmpty;

  // @override
  // void initState(){
  //   Future.microtask(() {
  //     Provider.of<List_GambarProvider>(context, listen: false).initialData()
  //   })
  // }

  @override
  void initState() {
    Future.microtask(() {
      Provider.of<List_GambarProvider>(context, listen: false).initialData();
      Provider.of<List_GambarProvider2>(context, listen: false).initialData();
    });
    isDestinationEmpty = false;
    isCheckInEmpty = false;
    isCheckOutEmpty = false;
    isGuestsEmpty = false;

    super.initState();
  }

  Widget build(BuildContext context) {
    final prov = Provider.of<List_GambarProvider>(context);
    final prov2 = Provider.of<List_GambarProvider2>(context);

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Material(
        borderRadius: BorderRadius.circular(4.0),
        // elevation: 5.0,
        child: MaterialButton(
          minWidth: 100.0,
          height: 35.0,
          onPressed: () {
            //validasi jika username dan password empty maka tampilan error
            if (destinasiController.text.isEmpty &&
                checkinController.text.isEmpty &&
                checkoutController.text.isEmpty &&
                guestsController.text.isEmpty) {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Search failed!!'),
                    content: Text('Harap isi semua informasi terlebih dahulu.'),
                    actions: <Widget>[
                      TextButton(
                        child: Text('Tutup'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
              setState(() {
                isDestinationEmpty = true;
                isCheckInEmpty = true;
                isCheckOutEmpty = true;
                isGuestsEmpty = true;
              });
              return;
            }

            //jika tidak ada kesalahan navigasi ke halaman home
            else {
              setState(() {
                isDestinationEmpty = false;
                isCheckInEmpty = false;
                isCheckOutEmpty = false;
                isGuestsEmpty = false;
              });
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                //passing data ke another screen
                return ListPenginapan();
              }));
            }
          },
          color: Colors.blue,
          child: Text('Search',
              style: TextStyle(color: Colors.white, fontSize: 10)),
        ),
      ),
    );

    return Scaffold(
        appBar: AppBar(
          title: const Text('BookingPenginapan.com'),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 280,
              width: MediaQuery.of(context).size.width,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('pantai.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  margin:
                      EdgeInsets.only(top: 120, right: 40, left: 40, bottom: 5),
                  padding: EdgeInsets.all(8),
                  width: 200,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(bottom: 5)),
                          Text(
                            'Welcome, @customer...',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      SizedBox(
                        height: 28,
                        child: TextFormField(
                          controller: destinasiController,
                          style: TextStyle(fontSize: 15),
                          autofocus: false,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            hintText: 'yourdestination',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10, left: 5)),
                      Form(
                        child: Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 28,
                                child: TextFormField(
                                  controller: checkinController,
                                  style: TextStyle(fontSize: 15),
                                  autofocus: false,
                                  decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      hintText: 'check-in',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0)),
                                      prefixIcon: Icon(
                                        Icons.calendar_today,
                                        color: Colors.blue,
                                        size: 18,
                                      )),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                                padding: EdgeInsets.only(
                                    left:
                                        10)), // Jarak antara dua TextFormField
                            Expanded(
                              child: SizedBox(
                                height: 28,
                                child: TextFormField(
                                  controller: checkoutController,
                                  style: TextStyle(fontSize: 15),
                                  autofocus: false,
                                  decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      hintText: 'check-out',
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      prefixIcon: Icon(
                                        Icons.calendar_today,
                                        color: Colors.blue,
                                        size: 18,
                                      )),
                                ),
                              ),
                            ),
                            SizedBox(
                                width: 10), // Jarak antara dua TextFormField
                            Expanded(
                              child: SizedBox(
                                height: 28,
                                child: TextFormField(
                                  controller: guestsController,
                                  style: TextStyle(fontSize: 15),
                                  autofocus: false,
                                  decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      hintText: 'guests',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0)),
                                      prefixIcon: Icon(
                                        Icons.person,
                                        color: Colors.blue,
                                        size: 18,
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Login Button
                      Padding(padding: EdgeInsets.only(top: 5)),
                      loginButton
                    ],
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 15)),
            const Text(
              'Top Destination in Indonesia',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [

            //   ],
            // )
            Padding(padding: EdgeInsets.only(top: 10)),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 10,
              runSpacing: 10,
              children: List.generate(prov.data['data']!.length, (index) {
                var item = prov.data['data']![index];
                return Container(
                  width: MediaQuery.of(context).size.width / 3 - 15,
                  child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100)),
                        child: Column(
                          children: [
                            Image.network(
                              item['img'],
                              width: 100,
                            ),
                            Text(
                              item['alamat'],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              item['jumlahpengunjung'],
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        // Text(
                        //   item['alamat'],
                        //   style: TextStyle(
                        //     fontSize: 16,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                        // Text(
                        //   item['jumlahpengunjung'],
                        //   style: TextStyle(
                        //     fontSize: 10,
                        //     color: Colors.grey,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                      )),
                );
              }),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            const Text(
              'Feature Home Recomended for you',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 10,
              runSpacing: 10,
              children: List.generate(prov2.data2['data2']!.length, (index) {
                var item = prov2.data2['data2']![index];
                return Container(
                  width: MediaQuery.of(context).size.width / 3 - 15,
                  child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100)),
                        child: Column(
                          children: [
                            Image.network(
                              item['img'],
                              width: 100,
                            ),
                            Text(
                              item['title'],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              item['jumlahpengunjung'],
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.yellowAccent, size: 10),
                                    Icon(Icons.star,
                                        color: Colors.yellowAccent, size: 10),
                                    Icon(Icons.star,
                                        color: Colors.yellowAccent, size: 10),
                                    Icon(Icons.star,
                                        color: Colors.yellowAccent, size: 10),
                                    Icon(Icons.star,
                                        color: Colors.yellowAccent, size: 10),
                                  ],
                                ),
                                Text(
                                  item['alamat'],
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // Text(
                        //   item['alamat'],
                        //   style: TextStyle(
                        //     fontSize: 16,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                        // Text(
                        //   item['jumlahpengunjung'],
                        //   style: TextStyle(
                        //     fontSize: 10,
                        //     color: Colors.grey,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                      )),
                );
              }),
            )
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (val) {},
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.email), label: 'Message'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ));
  }
}
