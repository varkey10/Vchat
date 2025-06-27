// ignore_for_file: camel_case_types

part of 'chat__bloc.dart';

abstract class ChatState {}

class ChatInitial extends ChatState {}

class FormData extends ChatState {
  final String? userName;
  final String? password;
  FormData({this.userName = '', this.password = ''});

  FormData copyWith({
    String? userName,
    String? password,
  }) {
    return FormData(
      userName: userName ?? this.userName,
      password: password ?? this.password,
    );
  }
}

class onLogginbuttonPressedState extends ChatState {}

class onRegisterbuttonPressedstate extends ChatState {}
