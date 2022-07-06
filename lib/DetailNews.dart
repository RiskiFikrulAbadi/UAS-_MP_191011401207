import 'package:berita_flutter/api/Api.dart';
import 'package:berita_flutter/api/ListBeritaResponse.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailNews extends StatefulWidget {
  DetailNews({this.data});

  final Data data;

  @override
  State<StatefulWidget> createState() {
    return _DetailNewsState();
  }
}

class _DetailNewsState extends State<DetailNews> {
  String Judul = "",
      resume = "",
      description= "",
      foto = "";
      
        

  void _getDetail() async {
    Api.getDetailNews(widget.data.id).then((response) {
      setState(() {
        Judul = response.title;
        resume = response.resume;
        description = response.description;
        foto = response.image;
        print(foto);
      });
    });
  }

  @override
  void initState() {
    _getDetail();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Berita"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                Judul,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              Text(
                resume,
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 10.0,
              ),
              Image.network(
                foto,
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes
                          : null,
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(description)
            ],
          ),
        ),
      ),
    );
  }
}
