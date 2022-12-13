import 'package:bloc/bloc.dart';
import 'package:desktopsampleupwork/model/lab_list_reponse_model.dart';
import 'package:desktopsampleupwork/repository.dart/web3_author_repository.dart';

part 'lab_list_event.dart';
part 'lab_list_state.dart';

class LabListBloc extends Bloc<FetchLabListEvent, LabListState> {
  final Web3authorRepository web3authorRepository;
  LabListBloc(this.web3authorRepository) : super(LabListInitial()) {
    on<FetchLabListEvent>((event, emit) async {
      emit(LabListInProgress());

      var eitherResult = await web3authorRepository.getLabList();

      eitherResult.fold((l) => emit(LabListFailed(errorMessage: l.message)),
          (r) => emit(LabListLoaded(labListResponseModel: r)));
    });
  }
}
