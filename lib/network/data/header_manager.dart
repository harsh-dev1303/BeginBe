import 'package:secure_fintech_bankingapp/core/router/observer/screen_tracking_observer.dart';
import 'package:secure_fintech_bankingapp/network/domain/header_manager_interface.dart';

class HeaderManager implements HeaderManagerInterface {
  final ScreenTrackingObserver screenTrackingObserver;

  HeaderManager(this.screenTrackingObserver);

  @override
  Map<String, String> getHeaders({
    String? serviceId,
    String? moduleId,
    String? subModuleId,
    String? screenId,
    String? customerId,
    
  }) {
    
    Map<String, String> headers = {};

    headers['serviceId'] = serviceId ?? screenTrackingObserver.currentScreenName;
    headers['moduleId'] = moduleId ?? screenTrackingObserver.currentScreenName;
    headers['subModuleId'] = subModuleId ?? screenTrackingObserver.currentScreenPath;
    headers['screenId'] = screenId ?? screenTrackingObserver.currentScreenPath;
    if(customerId != null) headers['customerId'] = customerId;

    return headers;

  }
}
