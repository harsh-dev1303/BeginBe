import 'package:dio/dio.dart';
import 'package:secure_fintech_bankingapp/core/error/failures.dart';
import 'package:secure_fintech_bankingapp/features/branch_detail/data/model/branch_detail_model.dart';
import 'package:secure_fintech_bankingapp/network/domain/network_client_interface.dart';

abstract class BranchDetailDatasource {
  Future<BranchDetailModel> getBranchDetails(String branchId);
}

class BranchDetailDatasourceImpl implements BranchDetailDatasource {

  final NetworkClientInterface networkClient;

  BranchDetailDatasourceImpl(this.networkClient);

  @override
  Future<BranchDetailModel> getBranchDetails(String branchId) async {
    try {
      //networking
      await Future.delayed(const Duration(seconds: 4));
      final branchDetailModel = switch (branchId) {
        "692a52e424e564800996f044" => BranchDetailModel(
          id: 'specific branch detail id',
          branchId: '692a52e424e564800996f044',
          branchName: 'Mahatma Gandhi',
          branchAddress: 'jaipur,Rajasthan,India',
          timing: '9 AM - 6 PM',
          avgWaitTime: '10 min',
          overview:
              'Mahatma Gandhi hospital is not very good but you can come😅',
          locLatitude: 26.770412,
          locLongitude: 75.854525,
        ),

        "692a526c24e564800996f03f" => BranchDetailModel(
          id: 'specific branch detail id',
          branchId: '692a52e424e564800996f044',
          branchName: 'Mahatma Gandhi',
          branchAddress: 'jaipur,Rajasthan,India',
          timing: '9 AM - 6 PM',
          avgWaitTime: '10 min',
          overview:
              'Mahatma Gandhi hospital is not very good but you can come😅',
          locLatitude: 26.770412,
          locLongitude: 75.854525,
        ),
        _ => BranchDetailModel(
          id: 'default',
          branchId: branchId,
          branchName: 'Unknown Branch',
          branchAddress: 'N/A',
          timing: 'N/A',
          avgWaitTime: 'N/A',
          overview: 'No details available',
          locLatitude: 0.0,
          locLongitude: 0.0,
        ),
      };

      return branchDetailModel;
    } on TypeError catch (e) {
      print("type error in specific branch detail - $e");
      throw ServiceFailure("unable to fetch details! - Type error");
    } on DioException catch (e) {
      print("branch detail dioException error - ${e.response?.data}");
      print(
        "branch detail datasource dioException error status code - ${e.response?.statusCode}",
      );
      throw ServiceFailure("Unable to fetch details! - dio error");
    } on Exception catch (e) {
      print("branch details datasource exception - $e");
      throw ServiceFailure("unable to fetch details! - exception error");
    }
  }
}
