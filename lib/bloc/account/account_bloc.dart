import 'package:bloc/bloc.dart';
import 'package:diplomski_rad_assets_module/bloc/account/account_event.dart';
import 'package:diplomski_rad_assets_module/bloc/account/account_state.dart';
import 'package:diplomski_rad_assets_module/network/rest.dart';

import '../../models/account_model.dart';

class AccountsBloc extends Bloc<AccountEvent, AccountsState> {
  AccountsBloc(): super(AccountsLoading()) {
    on<OnLoad>(_loadAccounts);
  }

  Future<void> _loadAccounts(OnLoad event, Emitter<AccountsState> state) async {
    emit(AccountsLoading());
    try {
     List<Account> listOfAccounts = await fetchAllAccounts(event.jwtToken);
     emit(AccountsLoaded(accountList: listOfAccounts));
    } catch (e) {
      print(e);
      emit(AccountsFailure());
    }
  }
}