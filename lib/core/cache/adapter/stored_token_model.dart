import 'package:hive/hive.dart';
import 'package:secure_fintech_bankingapp/features/token_confirmation/data/model/stored_token_info/stored_token_model.dart';

class StoredTokenModelAdapter extends TypeAdapter<StoredTokenModel> {

  final int typeId = 1;

  @override
  StoredTokenModel read(BinaryReader reader) {
    final tokenId = reader.readString();
    final categoryName = reader.readString();
    final branchName = reader.readString();
    return StoredTokenModel(tokenId: tokenId, categoryName: categoryName, branchName: branchName);
  }

  // @override
  // // TODO: implement typeId
  // int get typeId => throw UnimplementedError();

  @override
  void write(BinaryWriter writer, StoredTokenModel obj) {
    writer.writeString(obj.tokenId);
    writer.writeString(obj.categoryName);
    writer.writeString(obj.branchName);
  }

}