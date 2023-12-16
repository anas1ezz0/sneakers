// import 'package:bloc/bloc.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:sneakers/bloc/status.dart';
// import 'package:sneakers/helper/dio_helper.dart';
// import 'package:sneakers/models/data.dart';
//
// class AppCubit extends Cubit<AppState>{
//   AppCubit() : super(InitialStatus());
//
//   static  AppCubit get(context) => BlocProvider.of(context);
//
//   Future<List<DataModel>> getData() async {
//     var response = await DioHelper.getData(url: 'https://api.npoint.io/10aea263260ef40221bf');
//     List<dynamic> jsonData = response.data;
//     // getdata.
//
//     Map<String, dynamic> name = jsonData[0];
//
//
//     List<DataModel> dataList = [];
//
//     for (var data in jsonData) {
//       DataModel dataModel = DataModel.fromJson(data);
//       dataList.add(dataModel);
//     }
//
//
//     return dataList;
//   }
// }
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:sneakers/bloc/status.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartState([]));

  void addItemToCart(String item) {
    final updatedItems = List<String>.from(state.items)..add(item);
    emit(CartState(updatedItems));
  }

  Future<void> fetchItemsFromAPI() async {
    final response = await http.get(Uri.parse('https://api.npoint.io/10aea263260ef40221bf'));

    if (response.statusCode == 200) {
      final List<String> apiItems = parseItemsFromResponse(response.body);
      final updatedItems = List<String>.from(state.items)..addAll(apiItems);
      emit(CartState(updatedItems));
    } else {
      // Handle error case
    }
  }

  List<String> parseItemsFromResponse(String responseBody) {
    return parseItemsFromResponse(responseBody);
    // Parse the response body and extract the items
    // Return a list of items
  }
}