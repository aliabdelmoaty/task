import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:task/constants/constants.dart';
import 'package:task/constants/dio_helper.dart';
import 'package:task/home/data/user_model/user_model.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());
  static UserCubit get(context) => BlocProvider.of(context);
  List<UserModel>? userModel = [];
  Future<void> getUserData() async {
    emit(GetUserLoading());
    DioHelper.getData(endPoint: endPointUser).then((value) {
      for (var e in value) {
        userModel?.add(UserModel.fromJson(e));
      }
      emit(GetUserSuccess());
    }).catchError((e) {
      print(e.toString());
      emit(GetUserError(e.toString()));
    });
  }
}
