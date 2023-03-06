import 'package:dart_lnurl/dart_lnurl.dart';

void main() {
  const url = 'lightning:LNURL1DP68GURN8GHJ7MRWW4EXCTNXD9SHG6NPVCHXXMMD9AKXUATJDSKHW6T5DPJ8YCTH8AEK2UMND9HKU0TPV4NRGCN9XA3NQWRP8YMKXVTPVCCXGWTZ8YER2WTPVYMRGWFSVS6RYEPKVVMNJETYVGEXYVPJXFNRZCMZXAJN2CENXVENGEFNV9SNX0>
  final res = await getParams(url, timeout: Duration(seconds: 10));
  final withdrawalParams = res.withdrawalParams;

  final maxWithdrawableBefore = withdrawalParams?.maxWithdrawable;
  final balanceCheckUrl = withdrawalParams?.balanceCheck;
  final callback = await get(Uri.parse(balanceCheckUrl!));

  print(withdrawalParams?.callback);
  print(withdrawalParams?.domain);
  print(withdrawalParams?.k1);
}
