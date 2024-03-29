import 'dart:convert';
import 'package:http/http.dart' as http;
import 'modellclass/bannermodel.dart';
import 'modellclass/categorymodel.dart';

List<Bannermodel>   bannerstore  = [];
List<Categorymodel> Categorystore= [];

Future<Bannermodel>bannerget() async {
  final responce = await http.get(Uri.parse("https://ecom.laurelss.com/Api/get_banner"));
  if (responce.statusCode == 200) {
    final data = jsonDecode(responce.body);
    if(bannerstore.isEmpty){
      for(Map i in data){
        bannerstore.add(Bannermodel.fromJson(i));
      }
    }
    return Bannermodel();
  } else {
    return Bannermodel();
  }
}

Future<Categorymodel>categoryget()async{
  final responce = await http.get(Uri.parse("https://ecom.laurelss.com/Api/get_category"));
  if (responce.statusCode == 200) {
    final data = jsonDecode(responce.body);
    if(Categorystore.isEmpty){
      for(Map i in data){
        Categorystore.add(Categorymodel.fromJson(i));
      }
    }
    return Categorymodel();
  } else {
    return Categorymodel();
  }
}

