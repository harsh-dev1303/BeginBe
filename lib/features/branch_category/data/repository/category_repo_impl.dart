import 'package:fpdart/fpdart.dart';
import 'package:secure_fintech_bankingapp/core/error/failures.dart';
import 'package:secure_fintech_bankingapp/core/typedefs.dart';
import 'package:secure_fintech_bankingapp/features/branch_category/data/datasource/category_datasource.dart';
import 'package:secure_fintech_bankingapp/features/branch_category/domain/entity/categories_entity.dart';
import 'package:secure_fintech_bankingapp/features/branch_category/domain/repository/category_repo.dart';

class CategoryRepoImpl implements CategoryRepo{

  final CategoryDatasource datasource;

  CategoryRepoImpl(this.datasource);

  @override
  ResultEither<CategoriesEntity> getCategories(String branchId) async {
    try{
      final categoriesModel = await datasource.fetchCategories(branchId);
      return Either.right(
       categoriesModel.toDomain()
      );

    }on ServiceFailure catch(e){
      return Either.left(
        ServiceFailure(e.message.toString())
      );
    }
  }
  
}