import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_exa/ui/views/landing_view/home_pageview_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomePageModelView>.reactive(
      viewModelBuilder: () => HomePageModelView(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Color(0xFF202442),
        body: SafeArea(
          child: Column(
            children: [
              _HomePageHeader(),
              _GridBuild(),
              Divider(
                endIndent: 15,
                indent: 15,
                thickness: 1,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  child: model.isBusy
                      ? Center(child: CircularProgressIndicator())
                      : model.hasError
                          ? Center(
                              child: GestureDetector(
                                onTap: model.initialise,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      "Something went wrong.Tap to Try again"),
                                ),
                              ),
                            )
                          : _ListBuilder()),
            ],
          ),
        ),
      ),
    );
  }
}

class _HomePageHeader extends StatelessWidget {
  const _HomePageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.only(top: 35, left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Browse",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Icon(
            Icons.notifications,
            color: Color(0xFF00FC6C),
            size: 28,
          )
        ],
      ),
    );
  }
}

class _GridBuild extends ViewModelWidget<HomePageModelView> {
  const _GridBuild({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, model) {
    return Container(
      width: double.infinity,
      height: 130,
      child: GridView.builder(
        // physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        addAutomaticKeepAlives: false,
        padding: EdgeInsets.all(14),
        itemCount: model.catagory.length,
        scrollDirection: Axis.horizontal,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (BuildContext contex, int index) {
          return GestureDetector(
            onTap: () => model.onCatagories(
                catagory: model.catagory[index], index: index),
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              color: Color(0xFF3B3D4E),
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.all(Radius.circular(12))),
              child: GridTile(
                  footer: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      model.catagory[index],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: model.selectedCatagoryIndex == index
                              ? Color(0xFF00FC6C)
                              : Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Icon(
                      model.icons[index],
                      color: model.selectedCatagoryIndex == index
                          ? Color(0xFF00FC6C)
                          : Colors.white,
                      size: 50,
                    ),
                  )),
            ),
          );
        },
      ),
    );
  }
}

class _ListBuilder extends ViewModelWidget<HomePageModelView> {
  const _ListBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, model) {
    return Container(
        width: double.infinity,
        child: model.listToShow.isNotEmpty
            ? ListView.builder(
                // physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                addAutomaticKeepAlives: false,
                padding: EdgeInsets.all(14),
                itemCount: model.listToShow.length,
                scrollDirection: Axis.vertical,

                itemBuilder: (BuildContext contex, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          child: GestureDetector(
                            onTap: () => model.onDescriptionTap(index),
                            child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                color: Color(0xFF3B3D4E),
                                shape: RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.all(
                                        Radius.circular(12))),
                                child: GridTile(
                                  footer: Container(
                                    height: 50,
                                    color: Colors.black54,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, bottom: 5),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    model.listToShow[index]
                                                        ['name'],
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    model.listToShow[index]
                                                        ['sector'],
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w200),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 2),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
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
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 4.0),
                                                          child: Text(
                                                            '220',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w200),
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
                                                          color:
                                                              Color(0xFF00FC6C),
                                                          size: 20,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 4.0),
                                                          child: Text(
                                                            '220',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
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
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 4.0),
                                                          child: Text(
                                                            '220',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
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
                                        Container(
                                          color: Colors.black,
                                        )
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
                        ),
                      ],
                    ),
                  );
                },
              )
            : Center(
                child: Text(
                  'Not data yet!',
                  style: TextStyle(color: Colors.white),
                ),
              ));
  }
}
