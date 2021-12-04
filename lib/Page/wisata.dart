import 'package:flutter/material.dart';

class Wisata extends StatefulWidget {
  @override
  _Wisata createState() => _Wisata();
}

class _Wisata extends State<Wisata> {
  int count = 0;
  String _NamaWisata = "Tidak Ada Wisata Yang Di Pilih";
  String _Deskripsi = "Test";
  void pilihWisata(String nama) {
    setState(() {
      _NamaWisata = "Anda Memilih Wisata " + nama;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(10)),
        Card(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(5)),
              Text(
                "Wisata Gili Trawangan",
                style: TextStyle(color: Colors.red),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Row(
                children: <Widget>[
                  Image(
                    image: NetworkImage(
                        "https://lh6.googleusercontent.com/-ITbfpNU3iow/W1u2bJQFevI/AAAAAAAACoQ/38iU7JVZYjsW3qNpn3VlqgOXav0k_3rSwCLIBGAYYCw/w317-h238-k-no/"),
                    width: 80,
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  Expanded(
                    child: Text(
                      "Gili Trawangan adalah yang terbesar dari ketiga pulau kecil atau gili yang terdapat di sebelah barat laut Lombok, Trawangan juga satu-satunya gili yang ketinggiannya di atas permukaan laut cukup signifikan",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
              TextField(
                decoration: InputDecoration(hintText: "Test"),
                onChanged: (String deskripsi) =>
                    setState(() => this._Deskripsi = deskripsi),
              ),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.all(5)),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(5),
            color: Colors.white,
            height: 100,
            child: Text(this._Deskripsi),
          ),
        ),
      ],
    );
  }
}
