import 'dart:convert';
import 'package:hive_flutter/hive_flutter.dart';
import'package:http/http.dart'as http;
import 'modellclass/Allproductesmodel.dart';

List<Allproductesmodel>Allproducteslist=[];
List like = [];

final _myBox = Hive.box('sign_in');
final customerid = _myBox.get(3);


Stream<List<Allproductesmodel>>allproductes()async*{
  final responce = await http.get(Uri.parse("https://ecom.laurelss.com/Api/all_products?customer_id=${customerid}"));
  if(responce.statusCode==200){
    final data = jsonDecode(responce.body);
    Allproducteslist.clear();
    if(Allproducteslist.isEmpty){
      for(Map i in data){
        Allproducteslist.add(Allproductesmodel.fromJson(i));
        like.add(true);
      }
    }
    yield  Allproducteslist;
  }else{
    yield  Allproducteslist;
  }
}