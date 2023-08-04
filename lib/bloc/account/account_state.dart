import '../../models/account_model.dart';

abstract class AccountsState {
  const AccountsState();
}

class AccountsLoading extends AccountsState {
  AccountsLoading(){
    print("Initiliazed acc loading");
  }
}

class AccountsLoaded extends AccountsState {
  final List<Account> accountList;

  AccountsLoaded({
    required this.accountList
  });
}
class AccountsFailure extends AccountsState {}