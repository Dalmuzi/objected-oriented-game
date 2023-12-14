class Timer{
  float Time; 
  Timer(float set){
    Time = set;
  }
  float getTime(){
    return(Time);
  }
  
  void setTime(float set){
    Time = set;
  }
  void countUp(){
    Time += 0.02;
  }
  
  void countDown(){
    Time -= 1;
  }
  
}
