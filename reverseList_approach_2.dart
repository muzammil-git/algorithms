///Reverse a list: Approach 2
///Optimized: We swap the element in a linear way till half the index

void main() {
  
  List numberList = [1,2,3,4,5,6,7,8,9];
  print("Original List $numberList");
  
  int temp;
  
  for(int i=0; i<numberList.length/2; i++){
    
    temp = numberList[i];
    
    numberList[i] = numberList[numberList.length-1 -i];
    numberList[numberList.length-1 - i] = temp;
  }
  
  print("Reversed List $numberList");
}
