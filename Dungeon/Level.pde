class Level
{
  ArrayList<Room> rooms;//Creates an array of rooms for each level
  int totalRows;//Total Rows in the level
  int totalCols;//Total columns in the level
  
  Level(int numRooms)
  {
    totalRows=totalCols=0;//set the rows and cols to 0
    
    rooms = new ArrayList<Room>();
    rooms.add(new Room(rows,cols,1,'n',0) );//Starting room has no entrance
    
    totalRows+=rows;
    totalCols+=cols;
    
    //Creates an arraylist the size of numRooms 
    while(numRooms-1>rooms.size())
    {
      Room temp;
      temp = rooms.get(rooms.size()-1);//Used to get the exit of the previous room
      
      rooms.add(new Room(rows,cols,1,temp.getExit(),rooms.size()-1) );//Adds a new room
      totalRows+=rows;
      totalCols+=cols;
    }
    
    Room temp;
    temp = rooms.get(rooms.size()-1);//Used to get the exit of the previous room
    
    rooms.add(new Room(rows,cols,0,temp.getExit(),rooms.size()-1) );//Adds the final room
    totalRows+=rows;
    totalCols+=cols;
  }
  
  void showRoom()
  {
    Room temp;
    temp = rooms.get(currentRoom);
    
    temp.render();
  }
  /*
  void showLevel()
  {
    //size of level is 2x^2. Each room is x/rooms
    background(0);
    fill(0,100,0);
    int border=width/10;
    
    for(int i=0;i<rooms.size();i++)
    {
      Room temp;
      
      temp = rooms.get(i);
      
      
    }
  }*/
  
  void printRooms()
  {
    for(int i=0;i<rooms.size();i++)
    {
      Room temp;
      
      temp = rooms.get(i);
      
      temp.getMatrix();
      
      println("New Room \n \n");
    }
  }
  
}