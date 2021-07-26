import 'customer.dart';

class MutationResult {
  final bool? success;
  final String? errorMessage;
  final Customer? customer;

  MutationResult({this.success, this.errorMessage, this.customer});

  factory MutationResult.fromJson(Map<String, dynamic> json) => MutationResult(
        success: json["success"],
        errorMessage: json["errorMessage"],
        customer: Customer.fromJson(json['customer']),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "errorMessage": errorMessage,
        "customer": customer?.toJson(),
      };
}
