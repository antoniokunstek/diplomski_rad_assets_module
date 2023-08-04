abstract class AccountEvent {

}

class OnLoad extends AccountEvent {
  final String? jwtToken;

  OnLoad({
    required this.jwtToken
  });
}