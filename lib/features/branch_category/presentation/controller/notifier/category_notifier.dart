

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secure_fintech_bankingapp/features/branch_category/domain/entity/categories_entity.dart';
import 'package:secure_fintech_bankingapp/features/branch_category/domain/locator/category_locator.dart';

part 'category_notifier.g.dart';

@riverpod
class CategoryNotifier extends _$CategoryNotifier{

  Future<CategoriesEntity> build(String branchId) async {
      return await _fetchCategories(branchId);
  }

  Future<CategoriesEntity> _fetchCategories(String branchId) async {
    final categoryRepo = await ref.watch(categoryRepoLocatorProvider.future);
    final categoriesEntity = await categoryRepo.getCategories(branchId);

    return categoriesEntity.fold(
      (failure){
        throw Exception(failure.message.toString());
      }, 
      (categories){
        return categories;
      }
      );
    
  }

  Future<void> refresh() async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(()=>_fetchCategories(branchId));
  }

}