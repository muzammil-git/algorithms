///findDuplicateNumber.dart
void main() {
  
  
  List numberDataset = [3,1,2,7,3,4,3,2,3,1,5,8,10,4,1231,4,4213,33,42,4213];
  print("Number Dataset: $numberDataset");
  
  
  int number;
  Map map = {};
  
  // Iterate over every item and assign them a value zero 
  // and add to the map structure, upon repeating element the value
  // is increased by currentValue+=1
  for(number in numberDataset){
    
    if(map.containsKey(number)){
      map[number] = map[number]+1;
    }
    
    else{
      map[number] = 0;
    }
  }
  
  
  // This loop is to display the duplicate items in terminal
  map.forEach((k, v){
        
    if(map[k] > 0){
      
      print("Found ${map[k]} Duplicate $k");
    }
    
  });
}
 
