import 'package:flutter/material.dart';
import 'package:sneakers/widgets/home/sneakers_tile.dart';

import '../../models/data.dart';

class WomenListView extends StatelessWidget {
  const WomenListView({super.key, required this.dataList});
  final List<DataModel> dataList;
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: dataList.length,
            (context, index) => SneakersTile(dataModel: dataList[index])));
  }
}
