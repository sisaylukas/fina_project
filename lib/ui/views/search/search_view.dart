import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_exa/ui/views/search/search_view_model.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchViewModel>.reactive(
      viewModelBuilder: () => SearchViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Color(0xFF202442),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 45,
                padding: EdgeInsets.all(4),
                margin: EdgeInsets.all(25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.black54),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        autofocus: true,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400),
                        // onChanged: (input) {
                        //   setState(() {
                        //     if (input != null) {
                        //       query = input;
                        //     }
                        //   });
                        // },
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 52.0, vertical: 4),
                            hintText: "search",
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Icon(
                                Icons.search,
                                color: Color(0xFF00FC6C),
                              ),
                            ),
                            border: InputBorder.none),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(child: _ListBuilder()),
            ],
          ),
        ),
      ),
    );
  }
}

class _ListBuilder extends StatelessWidget {
  const _ListBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ListView.builder(
        // physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        addAutomaticKeepAlives: false,
        padding: EdgeInsets.all(14),
        itemCount: 5,
        scrollDirection: Axis.vertical,

        itemBuilder: (BuildContext contex, int index) {
          return Container(
            height: 180,
            child: GestureDetector(
              // onTap: () {
              // },
              child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  color: Color(0xFF3B3D4E),
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.all(Radius.circular(12))),
                  child: GridTile(
                    footer: Container(
                      color: Colors.black54,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, bottom: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Kuraz tech",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Technology campany",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w200),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.thumb_up,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 4.0),
                                        child: Text(
                                          '220',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w200),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.favorite,
                                        color: Color(0xFF00FC6C),
                                        size: 20,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 4.0),
                                        child: Text(
                                          '220',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.thumb_down,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 4.0),
                                        child: Text(
                                          '220',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    child: Container(
                      color: Color(0xFF3B3D4E),
                      width: double.infinity,
                      height: 150,
                      child: Image.asset(
                        'assets/images/startup-thinkstock.jpg',
                        fit: BoxFit.cover,
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                  )),
            ),
          );
        },
      ),
    );
  }
}
