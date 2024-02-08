import 'dart:convert';
import 'package:flutter/material.dart';
import'package:http/http.dart'as http;

void addwishlist(String stockid,String price,String offerprice , String customerid,context)async {
  String uri = 'https://ecom.laurelss.com/Api/add_to_wishlist';

  final Body = {
    'stock_id': stockid,
    'price': price,
    'offer_price': offerprice,
    'customer_id': customerid
  };

  final responce = await http.post(Uri.parse(uri), body: Body);
  print(responce.body);
  if (responce.statusCode == 200) {
    // print(responce.body);
    final data = jsonDecode(responce.body);
    // print(data['cart']);
    if(data['status']==1){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data['data'])));
    }
    return data;
  }else{
    throw("error");
  }
}

void removewishlist(String customerid,String id,context)async{

  String uri = 'https://ecom.laurelss.com/Api/remove_wishlist_product';

  final Body = {
    'customer_id': customerid,
    'id': id,
  };

  final responce = await http.post(Uri.parse(uri), body: Body);
  if (responce.statusCode == 200) {
    final data = jsonDecode(responce.body);
    if(data["status"]==1){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data["data"])));
    }
  }else{
    throw("error");
  }

}