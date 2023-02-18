//part of 'authentication_cubit.dart';

abstract class AuthenticationState {}

class AuthenticationInitial extends AuthenticationState {}

class AuthenticationLoadingState extends AuthenticationState {}

class AuthenticationSuccessState extends AuthenticationState {
  AuthenticationSuccessState(response);
}

class AuthenticationErrorState extends AuthenticationState {
  final String msg;
  AuthenticationErrorState(this.msg);
}
