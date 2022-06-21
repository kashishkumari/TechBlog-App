import 'package:flutter/material.dart';
import 'package:tech_blog_app/model/article_model.dart';
import 'package:tech_blog_app/views/homepage.dart';

import '../helper/news.dart';

class CategoryView extends StatefulWidget {
  final String category;
  const CategoryView({
    Key? key,
    required this.category,
  }) : super(key: key);
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  // ignore: deprecated_member_use
  List<ArticalModel> articles = <ArticalModel>[];
  // ignore: unused_field
  bool _loading = true;
  @override
  void initState() {
    super.initState();
    getCategoriesNews();
  }

  getCategoriesNews() async {
    CategoryNews newsClass = CategoryNews();
    await newsClass.getNews(widget.category);
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
        actions: [
          Opacity(
            opacity: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Icon(Icons.safety_divider),
            ),
          ),
        ],
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
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: ListView.builder(
                        itemCount: articles.length,
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return BlogTile(
                            imgUrl: articles[index].urlToImage,
                            title: articles[index].title,
                            desc: articles[index].description,
                            url: articles[index].url,
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
