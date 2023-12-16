import '../models/data.dart';

class DataServices {
  final dio;

  DataServices(this.dio);

  // List men =  [];
  // DataModel ?data ;

  Future<List<DataModel>> getData() async {
    var response = await dio.get('https://api.npoint.io/10aea263260ef40221bf');
    List<dynamic> jsonData = response.data;
    // men = data!.category.where((element) => element.tybeId == 1)
    //     .toList() ??
    //     [];


    Map<String, dynamic> name = jsonData[0];
    List<DataModel> dataList = [];
    // dataList.add(DataModel()).where((element) => element.category == 'men');
    // dataList.where((element) => element.category == 'women');

    for (var data in jsonData) {
      DataModel dataModel = DataModel.fromJson(data);
      dataList.add(dataModel);
    }


    return dataList;
  }
}
