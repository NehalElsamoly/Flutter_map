abstract class Homerepo {}

class FetchAllMonthsEvent extends Homerepo {
  final String token;

  FetchAllMonthsEvent({required this.token});
}