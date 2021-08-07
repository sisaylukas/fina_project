import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_exa/ui/views/myrequest/myrequest_view_model.dart';

class MyRequest extends StatefulWidget {
  const MyRequest({Key? key}) : super(key: key);

  @override
  _MyRequestState createState() => _MyRequestState();
}

List<Widget> tabcontainer = [
  _RequesListBuilder(),
  _ConfirmedListBuilder(),
];

class _MyRequestState extends State<MyRequest> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyRequestViewModel>.reactive(
      viewModelBuilder: () => MyRequestViewModel(),
      builder: (context, model, child) => DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Color(0xFF202442),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xFF202442),
            bottom: TabBar(
              unselectedLabelColor: Colors.white,
              indicatorColor: Color(0xFF00FC6C),
              indicatorWeight: 2.5,
              indicatorSize: TabBarIndicatorSize.label,
              // indicatorPadding: EdgeInsets.only(left: 15, right: 10),
              labelColor: Color(0xFF00FC6C),

              //   labelPadding: EdgeInsets.fromLTRB(0, 1, 1, 0),
              labelStyle: TextStyle(fontSize: 15),
              tabs: <Widget>[
                Tab(
                  text: 'Pending ',
                ),
                Tab(
                  text: 'Confirmed',
                ),
              ],
            ),
          ),
          body: TabBarView(children: tabcontainer),
        ),
      ),
    );
  }
}

class _RequesListBuilder extends StatelessWidget {
  const _RequesListBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ListView.builder(
        // physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        addAutomaticKeepAlives: false,
        padding: EdgeInsets.all(14),
        itemCount: 2,
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
                                  Icon(
                                    Icons.access_time,
                                    color: Color(0xFF00FC6C),
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        " 04 : 35 PM",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
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

class _ConfirmedListBuilder extends StatelessWidget {
  const _ConfirmedListBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ListView.builder(
        // physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        addAutomaticKeepAlives: false,
        padding: EdgeInsets.all(14),
        itemCount: 2,
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
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    color: Color(0xFF00FC6C),
                                    size: 20,
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
