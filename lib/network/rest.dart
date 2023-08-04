import 'dart:convert';

import 'package:diplomski_rad_assets_module/models/account_model.dart';
import 'package:diplomski_rad_assets_module/network/response.dart';
import 'package:http/http.dart' as http;

Future<List<Account>> fetchAllAccounts(String? jwtToken) async {
  http.Response res = await http.get(Uri.parse('http://10.0.2.2:9999/api/v1/account/all'),
      headers: <String, String> {
        'Content-type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $jwtToken'
      },
  );

  if(res.statusCode == 200) {
    Response res2 = Response.fromJson(jsonDecode(res.body));
    if(res2.successful) {
      return getAccountList(res2.data);
    } else {
      throw Exception("");
    }
  } else {
    throw Exception("");
  }
}

List<Account> getAccountList(List<dynamic> responseData) {
  List<Account> accountList = [];

  for (var element in responseData) {
    Map<String, dynamic> dataMap = element as Map<String, dynamic>;
    Account currentAccount = Account.fromJson(dataMap);
    accountList.add(currentAccount);
  }

  return accountList;
}