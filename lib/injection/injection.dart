import 'package:desktopsampleupwork/api/web3_author_api.dart';
import 'package:desktopsampleupwork/bloc/lab_list/lab_list_bloc.dart';
import 'package:desktopsampleupwork/repository.dart/web3_author_repository.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.I;

void initializeInjection() {
  //api

  sl.registerLazySingleton(() => Web3authorApi());

  //repo

  sl.registerLazySingleton(() => Web3authorRepository(web3authorApi: sl()));

  //bloc

  sl.registerLazySingleton(() => LabListBloc(sl()));
}
