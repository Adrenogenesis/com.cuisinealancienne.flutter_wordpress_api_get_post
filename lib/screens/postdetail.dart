import 'package:flutter/material.dart';
import 'dart:convert' show utf8;

var encoded = utf8.encode('Promouvoir la cuisine à l&#8217;ancienne');
var decoded = utf8.decode(encoded);

class PostDetail extends StatelessWidget {
  final data;
  const PostDetail({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Je vous propose..."),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 10.0, top: 10.0),
              child: Text(
                data['title']['rendered']
                    .replaceAll("&#8217;", "'"),
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Image.network(data["_embedded"]["wp:featuredmedia"][0]["source_url"]),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              data['content']['rendered']
                  .toString()
                  .replaceAll("<p>", "")
                  .replaceAll("<br>", "")
                  .replaceAll("</p>", "")
                  .replaceAll("width=\"791\" height=\"1024\" src=\"https://cuisinealancienne.com/wp-content/uploads/2022/01/menu-cuisinealancienne-791x1024.jpg\" alt=\"menu\" class=\"wp-image-3444\"/>", "")
                  .replaceAll("</div>", "")
                  .replaceAll("<figure>", "")
                  .replaceAll("<div class=\"wp-block-image\">", "")
                  .replaceAll("<figure class=\"aligncenter size-large\">", "")
                  .replaceAll("<figure class=\"aligncenter size-full\">", "")
                  .replaceAll("<img loading=\"lazy\"","")
                  .replaceAll("width=\"791\" height=\"1024\"", "")
                  .replaceAll("width=\"800\" height=\"510\"", "")
                  .replaceAll("src=\"https://cuisinealancienne.com/wp-content/uploads/2021/12/nos_plats1.jpg\"", "")
                  .replaceAll("class=\"wp-image-3211\"", "")
                  .replaceAll("title=\"plats\"", "")
                  .replaceAll("alt=\"nos plats\"", "")
                  .replaceAll("srcset=\"https://cuisinealancienne.com/wp-content/uploads/2021/12/nos_plats1.jpg 800w, https://cuisinealancienne.com/wp-content/uploads/2021/12/nos_plats1-480x306.jpg 480w\"", "")
                  .replaceAll("sizes=\"", "")
                  .replaceAll("(min-width: 0px)", "")
                  .replaceAll("and (max-width: 480px) 480px, ", "")
                  .replaceAll("(min-width: 481px) 800px,", "")
                  .replaceAll("100vw\" />", "")
                  .replaceAll("<figcaption>", "")
                  .replaceAll("</figcaption>", "")
                  .replaceAll("</figure>", "")
                  .replaceAll("&#8217;", "'"),
              style: TextStyle(fontSize: 12.0),
            ),
          ),
        ],
      ),
    );
  }
}
