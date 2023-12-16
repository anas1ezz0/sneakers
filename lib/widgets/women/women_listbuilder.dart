import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sneakers/widgets/women/women_listview.dart';
import '../../models/data.dart';
import '../../service/service.dart';

class WomensListViewBuilder extends StatefulWidget {
  const WomensListViewBuilder({
    super.key,
  });

  @override
  State<WomensListViewBuilder> createState() => _WomensListViewBuilderState();
}

class _WomensListViewBuilderState extends State<WomensListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = DataServices(Dio()).getData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<DataModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return WomenListView(dataList: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text("Sorry there is a problem try later "),
          );
        } else {
          return const SliverToBoxAdapter(
              child: Center(
            child: CircularProgressIndicator(),
          ));
        }
      },
    );
  }
}
