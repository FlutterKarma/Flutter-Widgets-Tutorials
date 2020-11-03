import 'package:flutter/material.dart';

class SliverAppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text(
            "SilverAppBar title",
          ),
          snap: true,
          floating: true,
          pinned: true,
          stretch: true,
          expandedHeight: 160.0,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.pin,
            background: Image.network(
              "https://cdn.pixabay.com/photo/2017/09/14/22/42/milky-way-2750627__340.jpg",
              fit: BoxFit.fill,
            ),
          ),
        ),
        // SliverList(
        SliverFillRemaining(
          child: Center(child: Text("Body")),
        ),
      ],
    );
  }
}
