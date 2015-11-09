float value;
int high=0, low=1000;
int lowIndex;
int highIndex;
int start = 2007;
int count=0;
int sum =0;
float avg=0.00;
float y=2007;
  
String [] years ={"2007","2008","2009","2010","2011","2013","2014","2015"};
// float[] homeless;
color randomColor()
{
  return color(random(0, 255), random(0, 255), random(0, 255));
}

  
void setup()
{
    background(0);
    size(500, 500);
    fill(255);
  String fsval;
  
  ArrayList<int> arrList=new ArrayList<int>();

 //load in file
 String[] lines=loadStrings("homeless.csv");
 for(String s:lines)
  {
    fsval=s;
    int fval= fsval;
    arrList.add(fval);
  }
  
  for( int  i=0;i<arrList.size();i++)
  {
    count++;
    sum+=arrList.get(i);
  
     if(arrList.get(i)>high)
     {
       high=arrList.get(i); 
       highIndex=i;
     }
     if(arrList.get(i)<low)
     {
       low=arrList.get(i);
       lowIndex=i;
     }
  }
 /* //calculate the average
  avg= sum/count;
  //change code to print year 2007-2015
  println("The year with the most homeless was ",(start+lowIndex), ", with ", low, " sleeping rough"); 
  println("the average amount of homeless in ", count, "years was ", avg, " people.");
  
  //code to make a line graph
  
  float border = width * 0.1f;
      drawAxis(arrList, years, 15, 150.0, border);
      stroke(200);
      fill(200);
      
      
      float windowRange = (width - (border * 2.0f));
      float dataRange = 150;      
      float lineWidth =  windowRange / (float) (years.length - 1) ;
      
      float scale = windowRange / dataRange;
      for (int i = 1 ; i < arrList.size() ; i ++)
      {
        float x1 = border + ((i - 1) * lineWidth);
        float x2 = border + (i * lineWidth);
        float y1 = (height - border) - (arrList.get(i - 1)) * scale;
        float y2 = (height - border) - (arrList.get(i)) * scale;
        line(x1, y1, x2, y2);
      }  
  */
}/*
void drawAxis(ArrayList<Float> data, String[] horizLabels, int verticalIntervals, float vertDataRange, float border)
{
  
  
  stroke(0,255,255);
  fill(0,255,255);  
  int j=0; 
  // Draw the horizontal azis  
  line(border, height - border, width - border, height - border);
  
  float windowRange = (width - (border * 2.0f));  
  float horizInterval =  windowRange / (data.size() - 1);
  float tickSize = border * 0.1f;
  //data.size()
    
  for (int i = 0 ; i < data.size() ; i +=16)
  {  
   
   // Draw the ticks
   float x = border + (i * horizInterval);
    line(x, height - (border - tickSize), x, (height - border));
   float textY = height - (border * 0.5f);
   
   // Print the text 
   textAlign(CENTER, CENTER);
   
   text(horizLabels[j].substring(0, 4), x, textY);
   j++;
     
   
  }
  
  // Draw the vertical axis
  line(border, border , border, height - border);
  
  float verticalDataGap = vertDataRange / verticalIntervals;
  float verticalWindowRange = height - (border * 2.0f);
  float verticalWindowGap = verticalWindowRange / verticalIntervals; 
  for (int i = 0 ; i <= verticalIntervals ; i ++)
  {
    float y = (height - border) - (i * verticalWindowGap);
    line(border - tickSize, y, border, y);
    float hAxisLabel = verticalDataGap * i;
        
    textAlign(RIGHT, CENTER);  
    text((int)hAxisLabel, border - (tickSize * 2.0f), y);
  } 
  
}
*/
