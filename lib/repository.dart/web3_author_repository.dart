// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:desktopsampleupwork/api/web3_author_api.dart';
import 'package:desktopsampleupwork/constants/error.dart';
import 'package:desktopsampleupwork/model/lab_list_reponse_model.dart';

class Web3authorRepository {
  final Web3authorApi web3authorApi;
  Web3authorRepository({
    required this.web3authorApi,
  });
  Future<Either<AppError, LabListResponseModel>> getLabList() async {
    try {
      var response = await web3authorApi.getLabList();

//if request is succesful
      if (response.statusCode == 200) {
        return right(
            LabListResponseModel.labListResponseModelFromJson(response.body));
      }
//if request fails
      else {
        return left(AppError(message: ErrorMessage.generalError));
      }
    } on SocketException catch (e) {
      return left(AppError(message: ErrorMessage.networkFailed));
    } catch (e) {
      return left(AppError(message: ErrorMessage.generalError));
    }
  }
}
