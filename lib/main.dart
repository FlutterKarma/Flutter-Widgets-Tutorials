import 'package:flutter/material.dart';
import 'package:fluttercheat/data.dart';
import 'package:search_app_bar/filter.dart';
import 'package:search_app_bar/search_app_bar.dart';
import 'code.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animated Logo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Alldata> initList;
  TextEditingController editingController = TextEditingController();
  var showItemList = List<Alldata>();

  @override
  void initState() {
    initList = data;
    showItemList.addAll(initList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        ///Scroll view for Sliver app bar for giving custom scroll behaviour

        body: Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            header(),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 110.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.0, right: 12.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(30.0),
                    child: TextField(
                        onChanged: (value) {
                          filterSearch(value);
                        }, //
                        controller: editingController,
                        //still I'm  not using
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search,
                                color: Color(0xFFE511E5), size: 25.0),
                            contentPadding:
                                EdgeInsets.only(left: 10.0, top: 12.0),
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ))),
                  ),
                ),
              ],
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: showItemList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Panels(
                          code: showItemList[index].code,
                          run: showItemList[index].runapp,
                          title: showItemList[index].appbartitle,
                          appbarcolor: showItemList[index].appbarcolor,
                          url: showItemList[index].url),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 16,
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                              top: 16,
                              left: 16,
                              bottom: 30,
                            ),
                            child: CircleAvatar(
                              child: FlutterLogo(),
                              backgroundColor: Colors.grey[200],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              "${index + 1}.",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 100, 100, 135),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 16),
                            child: Text(
                              showItemList[index].appbartitle,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 100, 100, 135),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    ));
  }

  filterSearch(String query) {
    List<Alldata> searchList = List<Alldata>();
    searchList.addAll(initList);
    if (query.isNotEmpty) {
      List<Alldata> resultListData = List<Alldata>();
      searchList.forEach((item) {
        if (item.appbartitle.toLowerCase().contains(query.toLowerCase())) {
          resultListData.add(item);
        }
      });
      setState(() {
        showItemList.clear();
        showItemList.addAll(resultListData);
      });
      return;
    } else {
      setState(() {
        showItemList.clear();
        showItemList.addAll(initList);
      });
    }
  }

  Widget header() {
    return new Container(
        height: 140.0,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFFE511E5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 60.0),
            Text(
              'Widget of the Week',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}
