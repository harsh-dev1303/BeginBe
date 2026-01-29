import 'dart:async';

import 'package:dio/dio.dart';
import 'package:secure_fintech_bankingapp/core/error/failures.dart';
import 'package:secure_fintech_bankingapp/features/Live_queue/data/model/live_queue_model.dart';

abstract class LiveQueueDatasource {
  Stream<LiveQueueModel> liveQueue(String tokenId);
}

class LiveQueueDatasourceImpl implements LiveQueueDatasource {
  @override
  Stream<LiveQueueModel> liveQueue(String tokenId) async* {
    try {
      final updates = [
          LiveQueueModel(
            tokenId: tokenId,
            currentStatus: "Waiting",
            estimatedWaitTime: "50 min",
            currentPosition: "11",
            peopleAhead: "10",
            counterStatus: "open",
          ),
          LiveQueueModel(
            tokenId: tokenId,
            currentStatus: "Near",
            estimatedWaitTime: "45 min",
            currentPosition: "9",
            peopleAhead: "8",
            counterStatus: "open",
          ),
          LiveQueueModel(
            tokenId: tokenId,
            currentStatus: "Active",
            estimatedWaitTime: "35 min",
            currentPosition: "7",
            peopleAhead: "6",
            counterStatus: "open",
          ),
          LiveQueueModel(
            tokenId: tokenId, 
            currentStatus: "Near", 
            estimatedWaitTime: "30 min", 
            currentPosition: "6", 
            peopleAhead: "5", 
            counterStatus: "open"
            ),
            LiveQueueModel(
            tokenId: tokenId, 
            currentStatus: "waiting", 
            estimatedWaitTime: "30 min", 
            currentPosition: "6", 
            peopleAhead: "5", 
            counterStatus: "open"
            ),
            LiveQueueModel(
            tokenId: tokenId, 
            currentStatus: "Near", 
            estimatedWaitTime: "30 min", 
            currentPosition: "6", 
            peopleAhead: "5", 
            counterStatus: "open"
            ),
            LiveQueueModel(
            tokenId: tokenId, 
            currentStatus: "Active", 
            estimatedWaitTime: "25 min", 
            currentPosition: "5", 
            peopleAhead: "4", 
            counterStatus: "open"
            ),
            LiveQueueModel(
            tokenId: tokenId, 
            currentStatus: "Done", 
            estimatedWaitTime: "25 min", 
            currentPosition: "1", 
            peopleAhead: "0", 
            counterStatus: "open"
            )
        ];

      for(final update in updates){
        await Future.delayed(const Duration(seconds: 2));
        yield update;

      }
      
    } on TypeError catch (e) {
      print("type error in live queue - $e");
      throw ServiceFailure("unable to get data-type error");
    } on DioException catch (e) {
      print("dioexception in live queue status code-${e.response?.statusCode}");
      print("dioexception in live queue data-${e.response?.data}");
      throw ServiceFailure("unable to get data- dioexception");
    } on Exception catch (e) {
      print("Exception error in live queue - $e");
      throw ServiceFailure("unable to get data- exception");
    }
  }
}
