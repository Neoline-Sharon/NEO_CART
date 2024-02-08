import 'dart:convert';
/// orders : {"order":[{"order_id":"101","order_date":"1706196057","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"6298","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"100","order_date":"1706194441","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"9497","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"99","order_date":"1706193937","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"499","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"98","order_date":"1706188073","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"23295","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"97","order_date":"1706188018","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"9997","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"96","order_date":"1706186663","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"499","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"95","order_date":"1706186457","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"1999","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"94","order_date":"1706185618","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"28994","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"93","order_date":"1706174779","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"2597","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"90","order_date":"1706149947","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"0","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"89","order_date":"1706149164","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr,india<br>\n7510711543","order_amount":"186177","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"87","order_date":"1705983119","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"499","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"86","order_date":"1705970869","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"798","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"85","order_date":"1705970678","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"811","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"}],"order_count":14}
/// status : 200

Orderclassmodel orderclassmodelFromJson(String str) => Orderclassmodel.fromJson(json.decode(str));
String orderclassmodelToJson(Orderclassmodel data) => json.encode(data.toJson());
class Orderclassmodel {
  Orderclassmodel({
      Orders? orders, 
      num? status,}){
    _orders = orders;
    _status = status;
}

  Orderclassmodel.fromJson(dynamic json) {
    _orders = json['orders'] != null ? Orders.fromJson(json['orders']) : null;
    _status = json['status'];
  }
  Orders? _orders;
  num? _status;
Orderclassmodel copyWith({  Orders? orders,
  num? status,
}) => Orderclassmodel(  orders: orders ?? _orders,
  status: status ?? _status,
);
  Orders? get orders => _orders;
  num? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_orders != null) {
      map['orders'] = _orders?.toJson();
    }
    map['status'] = _status;
    return map;
  }

}

/// order : [{"order_id":"101","order_date":"1706196057","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"6298","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"100","order_date":"1706194441","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"9497","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"99","order_date":"1706193937","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"499","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"98","order_date":"1706188073","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"23295","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"97","order_date":"1706188018","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"9997","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"96","order_date":"1706186663","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"499","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"95","order_date":"1706186457","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"1999","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"94","order_date":"1706185618","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"28994","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"93","order_date":"1706174779","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"2597","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"90","order_date":"1706149947","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"0","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"89","order_date":"1706149164","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr,india<br>\n7510711543","order_amount":"186177","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"87","order_date":"1705983119","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"499","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"86","order_date":"1705970869","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"798","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"},{"order_id":"85","order_date":"1705970678","delivery_address":"sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543","order_amount":"811","gst_amount":"0","wtotal":"0","order_status":"1","payment_status":"1","order_details":[],"delivery_date":null,"delivery_note":"","delivery_charge":"0","payment_mode":"cod","invoice":"","convenient_charge":"0"}]
/// order_count : 14

Orders ordersFromJson(String str) => Orders.fromJson(json.decode(str));
String ordersToJson(Orders data) => json.encode(data.toJson());
class Orders {
  Orders({
      List<Order>? order, 
      num? orderCount,}){
    _order = order;
    _orderCount = orderCount;
}

  Orders.fromJson(dynamic json) {
    if (json['order'] != null) {
      _order = [];
      json['order'].forEach((v) {
        _order?.add(Order.fromJson(v));
      });
    }
    _orderCount = json['order_count'];
  }
  List<Order>? _order;
  num? _orderCount;
Orders copyWith({  List<Order>? order,
  num? orderCount,
}) => Orders(  order: order ?? _order,
  orderCount: orderCount ?? _orderCount,
);
  List<Order>? get order => _order;
  num? get orderCount => _orderCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_order != null) {
      map['order'] = _order?.map((v) => v.toJson()).toList();
    }
    map['order_count'] = _orderCount;
    return map;
  }

}

/// order_id : "101"
/// order_date : "1706196057"
/// delivery_address : "sharon<br>\nrfcjctrcjtrctrcjtrctr<br>\nkonikkara,thrissure<br>\n,india<br>\n7510711543"
/// order_amount : "6298"
/// gst_amount : "0"
/// wtotal : "0"
/// order_status : "1"
/// payment_status : "1"
/// order_details : []
/// delivery_date : null
/// delivery_note : ""
/// delivery_charge : "0"
/// payment_mode : "cod"
/// invoice : ""
/// convenient_charge : "0"

Order orderFromJson(String str) => Order.fromJson(json.decode(str));
String orderToJson(Order data) => json.encode(data.toJson());

class Order {
  Order({
      String? orderId, 
      String? orderDate, 
      String? deliveryAddress, 
      String? orderAmount, 
      String? gstAmount, 
      String? wtotal, 
      String? orderStatus, 
      String? paymentStatus, 
      List<dynamic>? orderDetails, 
      dynamic deliveryDate, 
      String? deliveryNote, 
      String? deliveryCharge, 
      String? paymentMode, 
      String? invoice, 
      String? convenientCharge,}){
    _orderId = orderId;
    _orderDate = orderDate;
    _deliveryAddress = deliveryAddress;
    _orderAmount = orderAmount;
    _gstAmount = gstAmount;
    _wtotal = wtotal;
    _orderStatus = orderStatus;
    _paymentStatus = paymentStatus;
    _orderDetails = orderDetails;
    _deliveryDate = deliveryDate;
    _deliveryNote = deliveryNote;
    _deliveryCharge = deliveryCharge;
    _paymentMode = paymentMode;
    _invoice = invoice;
    _convenientCharge = convenientCharge;
}

  Order.fromJson(dynamic json) {
    _orderId = json['order_id'];
    _orderDate = json['order_date'];
    _deliveryAddress = json['delivery_address'];
    _orderAmount = json['order_amount'];
    _gstAmount = json['gst_amount'];
    _wtotal = json['wtotal'];
    _orderStatus = json['order_status'];
    _paymentStatus = json['payment_status'];
    // if (json['order_details'] != null) {
    //   _orderDetails = [];
    //   json['order_details'].forEach((v) {
    //     _orderDetails?.add(Dynamic.fromJson(v));
    //   });
    // }
    _deliveryDate = json['delivery_date'];
    _deliveryNote = json['delivery_note'];
    _deliveryCharge = json['delivery_charge'];
    _paymentMode = json['payment_mode'];
    _invoice = json['invoice'];
    _convenientCharge = json['convenient_charge'];
  }
  String? _orderId;
  String? _orderDate;
  String? _deliveryAddress;
  String? _orderAmount;
  String? _gstAmount;
  String? _wtotal;
  String? _orderStatus;
  String? _paymentStatus;
  List<dynamic>? _orderDetails;
  dynamic _deliveryDate;
  String? _deliveryNote;
  String? _deliveryCharge;
  String? _paymentMode;
  String? _invoice;
  String? _convenientCharge;
Order copyWith({  String? orderId,
  String? orderDate,
  String? deliveryAddress,
  String? orderAmount,
  String? gstAmount,
  String? wtotal,
  String? orderStatus,
  String? paymentStatus,
  List<dynamic>? orderDetails,
  dynamic deliveryDate,
  String? deliveryNote,
  String? deliveryCharge,
  String? paymentMode,
  String? invoice,
  String? convenientCharge,
}) => Order(  orderId: orderId ?? _orderId,
  orderDate: orderDate ?? _orderDate,
  deliveryAddress: deliveryAddress ?? _deliveryAddress,
  orderAmount: orderAmount ?? _orderAmount,
  gstAmount: gstAmount ?? _gstAmount,
  wtotal: wtotal ?? _wtotal,
  orderStatus: orderStatus ?? _orderStatus,
  paymentStatus: paymentStatus ?? _paymentStatus,
  orderDetails: orderDetails ?? _orderDetails,
  deliveryDate: deliveryDate ?? _deliveryDate,
  deliveryNote: deliveryNote ?? _deliveryNote,
  deliveryCharge: deliveryCharge ?? _deliveryCharge,
  paymentMode: paymentMode ?? _paymentMode,
  invoice: invoice ?? _invoice,
  convenientCharge: convenientCharge ?? _convenientCharge,
);
  String? get orderId => _orderId;
  String? get orderDate => _orderDate;
  String? get deliveryAddress => _deliveryAddress;
  String? get orderAmount => _orderAmount;
  String? get gstAmount => _gstAmount;
  String? get wtotal => _wtotal;
  String? get orderStatus => _orderStatus;
  String? get paymentStatus => _paymentStatus;
  List<dynamic>? get orderDetails => _orderDetails;
  dynamic get deliveryDate => _deliveryDate;
  String? get deliveryNote => _deliveryNote;
  String? get deliveryCharge => _deliveryCharge;
  String? get paymentMode => _paymentMode;
  String? get invoice => _invoice;
  String? get convenientCharge => _convenientCharge;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['order_id'] = _orderId;
    map['order_date'] = _orderDate;
    map['delivery_address'] = _deliveryAddress;
    map['order_amount'] = _orderAmount;
    map['gst_amount'] = _gstAmount;
    map['wtotal'] = _wtotal;
    map['order_status'] = _orderStatus;
    map['payment_status'] = _paymentStatus;
    if (_orderDetails != null) {
      map['order_details'] = _orderDetails?.map((v) => v.toJson()).toList();
    }
    map['delivery_date'] = _deliveryDate;
    map['delivery_note'] = _deliveryNote;
    map['delivery_charge'] = _deliveryCharge;
    map['payment_mode'] = _paymentMode;
    map['invoice'] = _invoice;
    map['convenient_charge'] = _convenientCharge;
    return map;
  }

}