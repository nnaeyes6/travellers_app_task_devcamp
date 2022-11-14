import 'package:flutter/material.dart';

import '../model/data_model.dart';

class TravellersPage extends StatelessWidget {
  const TravellersPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          Image.network(
              'https://img.freepik.com/premium-vector/travel-concept-vector-illustration-with-famous-sights-accessories_95169-98.jpg?w=1800'),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            color: Colors.greenAccent.shade100.withOpacity(0.6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.brown.shade500,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                    child: Text(
                      "Attraction",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white60,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.brown.shade500,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                    child: Text(
                      "Places",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white60,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.brown.shade500,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                    child: Text(
                      "Hotels",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white60,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Popular Destination",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: datalist.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: ((context, index) => InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8, bottom: 16),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.red.shade800,
                          ),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  datalist[index].cityImage,
                                  height: 140,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  datalist[index].cityName,
                                  style: const TextStyle(
                                      color: Colors.white70,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
              )),
        ]),
      ),
    );
  }
}
