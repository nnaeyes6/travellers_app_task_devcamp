import 'package:flutter/material.dart';
import 'package:travellers_app/constant/appbar.dart';
import 'package:travellers_app/model/data_model.dart';

import 'widgets/tarvellers_page.dart';

class MyTravellerPage extends StatelessWidget {
  const MyTravellerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: const TravellersPage(),
    );
  }
}
