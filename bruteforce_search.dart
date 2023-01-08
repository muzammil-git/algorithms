/// BruteForce Search
// A brute force algorithm is one of the simplest ways of string searching. 
// It is also one of the most inefficient ways in terms of time and space complexity. 
// It is popular because of its simplicity. 
// --------------------------------------------------------------------------------------
// Ref: https://study.com/academy/lesson/string-searching-algorithms-methods-types.html
// --------------------------------------------------------------------------------------


void main() {
  
  String P = "heart";
  String S = "I am using heart and soul to control myself";
  
  int m = P.length;
  int n = S.length; 
  
  //used n-m instead of n-1.
  for(int i=0; i<n-m; i++){
    int j = 0; // Used to track match sequence.
    
    //Checks character by character. 
    while( j<m && P[j] == S[i+j] ){
      j = j+1;
      
      // Through length we can determine if the string is found or not
      if(m == j){
        print("Found match on index: $i");
        return;
      }
    }
  }
}
