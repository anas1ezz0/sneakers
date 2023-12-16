import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../models/data.dart';
import '../../service/service.dart';
import 'explor_lisView.dart';

class ExploreListViewBuilder extends StatefulWidget {
  const ExploreListViewBuilder({
    super.key,
  });

  @override
  State<ExploreListViewBuilder> createState() => _ExploreListViewBuilderState();
}

class _ExploreListViewBuilderState extends State<ExploreListViewBuilder> {
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
          return ExploreListView(dataList: snapshot.data!);
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
