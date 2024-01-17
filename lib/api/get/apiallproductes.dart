import 'dart:convert';
import'package:http/http.dart'as http;
import 'modellclass/allproductesmodel.dart';

List<Allproductesmodel>Allproducteslist=[];




Future<List<Allproductesmodel>>allproductes()async{
  final responce = await http.get(Uri.parse("https://ecom.laurelss.com/Api/all_products"));
  if(responce.statusCode==200){
    final data = jsonDecode(responce.body);
    if(Allproducteslist.isEmpty){
      for(Map i in data){
        Allproducteslist.add(Allproductesmodel.fromJson(i));
      }
    }
    return Allproducteslist;
  }else{
    return Allproducteslist;
  }
}