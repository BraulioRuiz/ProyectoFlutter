class APIResponse<T>{
  T data;
  bool error;
  String errorMesage;

  APIResponse({this.data, this.error=false});
}