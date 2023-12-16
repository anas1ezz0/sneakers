import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sneakers/widgets/home/sneakers_list.dart';
import '../../models/data.dart';
import '../../service/service.dart';

class SneakersListViewBuilder extends StatefulWidget {
  const SneakersListViewBuilder({
    super.key,
  });

  @override
  State<SneakersListViewBuilder> createState() =>
      _SneakersListViewBuilderState();
}

class _SneakersListViewBuilderState extends State<SneakersListViewBuilder> {
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
          return SneakersListView(
            dataList: snapshot.data!,
          );
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
