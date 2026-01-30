import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secure_fintech_bankingapp/features/branch_category/data/datasource/category_datasource.dart';
import 'package:secure_fintech_bankingapp/features/branch_category/data/repository/category_repo_impl.dart';
import 'package:secure_fintech_bankingapp/features/branch_category/domain/repository/category_repo.dart';
import 'package:secure_fintech_bankingapp/features/global_providers/providers.dart';

part 'category_locator.g.dart';

@riverpod
Future<CategoryDatasource> categoryDatasourceLocator(CategoryDatasourceLocatorRef ref) async {
  final networkClient = await ref.watch(networkClientProvider.future);
  return CategoryDatasourceImpl(networkClient);
} 

@riverpod
Future<CategoryRepo> categoryRepoLocator(CategoryRepoLocatorRef ref) async {
  final datasource = await ref.watch(categoryDatasourceLocatorProvider.future);
  return CategoryRepoImpl(datasource);
}