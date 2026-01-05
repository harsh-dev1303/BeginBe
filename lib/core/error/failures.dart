abstract class Failures {
  final message;
  Failures(this.message);
}

class ServiceFailure extends Failures{
  ServiceFailure([String message = "Service Failure Occured!"]):super(message);

  @override
  String toString() {
    return this.message;
  }
  
}


class GeneralFailure extends Failures{
  GeneralFailure([String message = "General Failure Occured!"]):super(message);

  @override
  String toString() {
    return this.message;
  }
  
}

class NetworkHandledException implements Exception {
  const NetworkHandledException();

  @override
  String toString() {
    return 'NetworkHandledException';
  }
}