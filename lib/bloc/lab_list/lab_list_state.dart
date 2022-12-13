// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'lab_list_bloc.dart';

abstract class LabListState {}

class LabListInitial extends LabListState {}

class LabListInProgress extends LabListState {}

class LabListLoaded extends LabListState {
  LabListResponseModel labListResponseModel;
  LabListLoaded({
    required this.labListResponseModel,
  });
}

class LabListFailed extends LabListState {
  String errorMessage;
  LabListFailed({
    required this.errorMessage,
  });
}
