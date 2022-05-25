import 'dart:convert';

import 'package:http/http.dart' as http;

Future<dynamic>get()async{

  Map<String, String> headers = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
    'Authorization': '<Your token>',
  };

  var newURI = Uri.parse("http://65.0.74.155:8000/users/appoinments/?user_id=1");

  final response = await http.get(newURI,headers: headers);

  print(response.body);
}

Future<dynamic>post()async{

  // print(DateTime.now().toString());
  try{
    final data = jsonEncode({
    'mentor_id':'be3da8d3-1072-442c-a24d-48360a60ba97',
    'user_id': 1,
    'mentor_plan_id':'0e03d91d-115b-4233-9b8e-430351f57b0c',
    'meeting_datetime': '2022-05-25 11:05:48.139437',
    'meeting_purpose':'Testing Purpose',
    'duration':10,
    });
    Map<String, String> headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': '<Your token>',
    };
    
    var url = Uri.parse("http://65.0.74.155:8000/users/appoinments/");

    var response = await http.post(url,body: data,headers: headers);

    print(response.statusCode);
    print(response.body);

  }catch(error){
    print(error);
  }
}

// POST : http://65.0.74.155:8000/users/appoinments/