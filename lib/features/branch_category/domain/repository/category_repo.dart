import 'package:secure_fintech_bankingapp/core/typedefs.dart';
import 'package:secure_fintech_bankingapp/features/branch_category/domain/entity/categories_entity.dart';

abstract class CategoryRepo {
   ResultEither<CategoriesEntity> getCategories(String branchId);
}