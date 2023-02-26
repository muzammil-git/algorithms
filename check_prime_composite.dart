// To find the factos of a number and check ifs prime or composite

void main() {
  
  ///Change the dividend to find the factor of that number
  int dividend = 92;
  int divisor;
  
  List factorList = [];
  bool check = true;
  
  /// Searches in list if the number already exists or not
  bool searchNumber(int findNum, List factorList){
    
    for(int i=0; i<factorList.length; i++){
      
      if(factorList[i] == findNum){
        return true;
      }
      
    }
    return false;
  }
  
  int i=0;
  while(check){
    
    divisor = i;
    if(dividend%divisor == 0){
      
      int factor1 = (dividend/divisor).toInt();
      int factor2 = divisor;
      
      bool check1 = searchNumber(factor1,factorList);
      bool check2 = searchNumber(factor2,factorList);
      
      ///If the any factors get repeated so we halt.
      if(check1 || check2){
        check = false; //Safety Check, we know break can terminate the loop.
        break;
      }
      
      factorList.add(factor1);
      factorList.add(factor2);
      
      print("Factors ${dividend/divisor}, ${divisor}");
    }
   
    
    i++;
  }
  
  //Can optimize this part
  print(factorList.toSet().toList());
  
  if(factorList.length <=2){
    print("Prime Numbers");
  } else{
    print("Composite Numbers");
  }
}
