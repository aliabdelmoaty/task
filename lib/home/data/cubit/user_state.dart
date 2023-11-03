part of 'user_cubit.dart';

@immutable
sealed class UserState {}

final class UserInitial extends UserState {}

final class GetUserLoading extends UserState {}

final class GetUserSuccess extends UserState {}

final class GetUserError extends UserState {
  final String e;

  GetUserError(this.e);
}
