

class AsyncronousTask {
  
  void printFileUsingAsyncWait() async{
    String value = await downloadFile();
    print("Status: $value");
  }
  
  void printFileUsingFuture() {
    Future<String>  value = downloadFile();
    value.then((recievedValue){
      print("Status: $recievedValue");
    });

  }
  
  Future<String> downloadFile(){
    Future<String> future= Future.delayed(Duration(seconds: 15),(){
      return "Task executed in back ground";
    });

    return future;
  }
}