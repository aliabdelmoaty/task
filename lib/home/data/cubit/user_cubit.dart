import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:task/constants/constants.dart';
import 'package:task/constants/dio_helper.dart';
import 'package:task/home/data/user_model.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());
  static UserCubit get(context) => BlocProvider.of(context);
  UserModel? userModel;
  Future getUserData() async {
    emit(GetUserLoading());
    DioHelper.getData(endPoint: endPointUser).then((value) {
      userModel = UserModel.fromJson(value);
      emit(GetUserSuccess());
      print(userModel?.id);
    }).catchError((e) {
      print(e.toString());
      emit(GetUserError(e.toString()));
    });
  }
}
