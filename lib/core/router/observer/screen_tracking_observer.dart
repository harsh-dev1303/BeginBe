import 'package:auto_route/auto_route.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class ScreenTrackingObserver extends AutoRouterObserver{
  
  String screenNameProvider = "";
  String screenPathProvider = "";

  String get currentScreenName => screenNameProvider;
  String get currentScreenPath => screenPathProvider;

  @override
  void didPush(Route route, Route? previousRoute) {
    _setCurrentScreenName(route);
    _setCurrentScreenPath(route);
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    _setCurrentScreenName(previousRoute);
    _setCurrentScreenPath(previousRoute);
    super.didPop(route, previousRoute);
  }

  void _setCurrentScreenName(Route? route){
    if(route != null && route.settings.name != null){
        screenNameProvider = route.settings.name!.replaceAll("/", "");
    }
  }

  void _setCurrentScreenPath(Route? route){
    if(route != null && route.data != null){
        screenPathProvider = route.data!.path.replaceAll("/", "");
    }

  }

} 

final screenTrackingObserverProvider = Provider<ScreenTrackingObserver>((_)=>ScreenTrackingObserver());