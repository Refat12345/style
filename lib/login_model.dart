class ShoLoginModel
{
  late bool  state;
 late String message;
  late String token;

  ShoLoginModel.fromjson(Map<String,dynamic> json)
  {
     state=json['state'];
    message=json['message'];
    token=json['token'] !=null ?json['token'] :"null"  ;
  }

}

