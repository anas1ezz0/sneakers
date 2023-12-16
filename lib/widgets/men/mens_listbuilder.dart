import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../models/data.dart';
import '../../service/service.dart';
import 'men_listview.dart';

class MensListViewBuilder extends StatefulWidget {
  const MensListViewBuilder({
    super.key,
    required this.dataList,
  });
  final List<DataModel> dataList;
  @override
  State<MensListViewBuilder> createState() => _MensListViewBuilderState();
}

class _MensListViewBuilderState extends State<MensListViewBuilder> {
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
          return MenListView(dataList: snapshot.data!);
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
