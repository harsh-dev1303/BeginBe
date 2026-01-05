import 'package:hive/hive.dart';
import 'package:secure_fintech_bankingapp/network/domain/model/auth_token.dart';

class AuthTokenAdapter extends TypeAdapter<AuthToken> {

  final int typeId = 1;

  @override
  AuthToken read(BinaryReader reader) {
    final atkn = reader.readString();
    return AuthToken(atkn: atkn);
  }

  // @override
  // // TODO: implement typeId
  // int get typeId => throw UnimplementedError();

  @override
  void write(BinaryWriter writer, AuthToken obj) {
    writer.writeString(obj.atkn);
  }

}