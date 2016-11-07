/*This is the version for my test branch*/
void setup()
{
  size(500,500);
  background(0,0,255);
  stroke(200);
  drawLineChart(rainFall,months);
}

float[] rainFall = {45,37,55,27,38,50,79,48,104,31,100,58}; 
String[] months = {"January", "February", "March", "April", "May","June",
"July", "August", "September", "October", "November", "December"};

void drawLineChart(float[] arr, String[] horizlables)
{
  float border = 50;
  float linelen = (width - (border*2.0f))/ (float) (arr.length -1);
  
  for(int i = 0; i < arr.length-1; i++)
  {
    ellipse(border + ((i +1) * linelen),(height - border) - arr[i+1], 3,3);
    line(border + (i * linelen),(height - border) - arr[i], border + ((i +1) * linelen),(height - border) - arr[i+1]);
  }
  
  line(border,border,border,height - border);
  line(border,height - border, width - border, height - border);
  
  for(int i = 0; i < arr.length; i++)
  {
    fill(200);
    textAlign(CENTER, CENTER);
    float x = border + (i * linelen);
    float y = height - (border /2);
    line(x,y - 25, x, y - 15);
    text(horizlables[i].substring(0,3), x, y);
  }
  
  for(int i = 0; i < height - (border*2); i += 20)
  {
    float y = (height - border) - i;
    line(border - 10, y, border, y);
    text(i, border / 2, y);
  }
}

void draw()
{
  
}