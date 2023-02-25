// Palindrome


void main() {
  
  String str1 = "meeteem";
  
  
  for(int i=0; i < (str1.length/2).floor(); i++){
    
    int endIndex = str1.length - 1 - i;
    
    if(str1[i] == str1[endIndex]){
      
      if(i==(str1.length/2).floor()- 1){
        print("Palindrome");
      }
    }
    
    else{
      print("Not a palindrome");
      break;
    }  
  }
}
 
