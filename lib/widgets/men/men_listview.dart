import 'package:flutter/material.dart';
import 'package:sneakers/widgets/home/sneakers_tile.dart';

import '../../models/data.dart';

class MenListView extends StatelessWidget {
   MenListView(
      {super.key, required this.dataList, this.dataModel, this.men});
  final List<DataModel> dataList;
  final List<DataModel>? men;
  final DataModel? dataModel;
  // List a = [1,2,3,4,5,6,7,8,9];
  // int t = 0;
  @override
  Widget build(BuildContext context) {

    // for(int i = 0 ; i <a.length; i++){
    //   if(a[i] % 2 ==0){
    //    [[a[t] ,a[i]]= [a[i],a[t]]];
    //    t++;
    //   }
    // }
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          childCount: dataList.length.isOdd? dataList.length %2 : dataList.length %1,
          (context, index) => SneakersTile(dataModel: dataList[index])),
    );
  }
}
