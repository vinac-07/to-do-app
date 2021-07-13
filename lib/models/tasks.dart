class Task{

   String title;
   bool isDone;

  Task({this.title,this.isDone = false});

  void toggleValue(){
    isDone = !isDone;
  }
}