abstract class HeaderManagerInterface {
  Map<String,String> getHeaders({
    String? serviceId,
    String? moduleId,
    String? subModuleId,
    String? screenId,
    String? customerId,
  });
}