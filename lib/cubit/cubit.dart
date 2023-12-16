import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sneakers/cubit/status.dart';

class AppCubit extends Cubit<AppStatus> {
  AppCubit() : super(InitialAppStatus());
  static AppCubit get(context) => BlocProvider.of(context);
}
