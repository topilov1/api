import 'package:api/data/repository/api_repository.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 200),
          Container(
            width: double.infinity,
            height: 300,
            color: Colors.grey,
            child: FutureBuilder(
              future: AppRepostory.getProductCategoryFromApi("men's clothing"),
              builder: (context, snapshot) {
                // kutip  tur malumot kevoti digani
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasData) {
                  DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        const TabBar(
                          tabs: [
                            Tab(
                              icon: Text(
                                'salom1',
                                // style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Tab(
                              icon: Text(
                                'salom2',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Tab(
                              icon: Text(
                                'salom3',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          height: 400,
                          color: Colors.red,
                          child: TabBarView(
                            children: [
                              Center(child: ListView.builder(
                                itemBuilder: (context, index) {
                                  return Container(
                                    color: Colors.red,
                                    width: 100,
                                    height: 100,
                                    // child: MyWidget(
                                    //   product: products![index],
                                    // ),
                                  );
                                },
                              )),
                              const Center(child: Text('salom2')),
                              const Center(child: Text('salom3')),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }

                return Container();
              },
            ),
          ),
        ],
      ),
    );
  }
}
