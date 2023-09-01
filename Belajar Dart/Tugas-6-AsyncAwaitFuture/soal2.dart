Future delayedPrints(int seconds, String messages){
  final duration = Duration(seconds: seconds); 
  return Future.delayed(duration).then((value)=>(messages));
}
main(List<String> args){
  print("life");
  delayedPrints(3, "is").then((status) => print(status));
  print("never flat");
}