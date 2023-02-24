///Reverse a list: Approach 1
///We create another list and put the element from end to start through a loop

void main() {
  
  
  List numbersList = [1,2,3,4,5,6,7,8,9];
  List reversedNumList = [];
  
  
  for(int i=0; i<numbersList.length; i++){
    
    int endNum = (numbersList.length-1) - i;
    reversedNumList.add(numbersList[endNum]);
  }
  
  print("Original List: $numbersList");
  print("Reversed List: $reversedNumList");
}
 
