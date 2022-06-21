import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tech_blog_app/helper/data.dart';
import 'package:tech_blog_app/helper/news.dart';
import 'package:tech_blog_app/model/categori.dart';
import 'package:tech_blog_app/views/articleview.dart';
import 'package:tech_blog_app/views/categoryview.dart';

import '../model/article_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: deprecated_member_use
  List<CategoryModel> categories = [];
  // ignore: deprecated_member_use
  List<ArticalModel> articels = [];

  // ignore: unused_field
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    categories = getCategory();
    getNews();
  }

  getNews() async {
    News newsClass = News();
    await newsClass.getNews();
    articels = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        elevation: 0.0,
        title: const Text(
          "News",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Slabo",
            fontWeight: FontWeight.bold,
            fontSize: 27.0,
          ),
        ),
      ),
      body: _loading
          ? const Center(
              child: SizedBox(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.red,
                ),
              ),
            )
          : SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Column(
                  children: [
                    //Upper Category Part
                    SizedBox(
                      //padding: EdgeInsets.symmetric(horizontal: 10.0),
                      height: 75.0,
                      child: ListView.builder(
                          itemCount: categories.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return CategoryTile(
                              imgUrl: categories[index].imgUrl,
                              categoryName: categories[index].categoryName,
                            );
                          }),
                    ),

                    //body part

                    Container(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: ListView.builder(
                        itemCount: articels.length,
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return BlogTile(
                            imgUrl: articels[index].urlToImage,
                            title: articels[index].title,
                            desc: articels[index].description,
                            url: articels[index].url,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final imgUrl,
      // ignore: prefer_typing_uninitialized_variables
      categoryName;
  const CategoryTile({
    Key? key,
    required this.categoryName,
    this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryView(
              category: categoryName.toString().toLowerCase(),
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 15.0, top: 5.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6.0),
              child: CachedNetworkImage(
                imageUrl: imgUrl,
                width: 120.0,
                height: 70.0,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 120.0,
              height: 70.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: Colors.black45,
              ),
              child: Text(
                categoryName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BlogTile extends StatelessWidget {
  final String imgUrl, title, desc, url;
  const BlogTile({
    Key? key,
    required this.url,
    required this.imgUrl,
    required this.title,
    required this.desc,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArticleView(
              blogUrl: url,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 15.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6.0),
              child: Image.network(imgUrl),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 17.0,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              desc,
              style: const TextStyle(
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
