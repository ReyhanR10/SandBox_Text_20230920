//Gloal Variables
int appWidth, appHeight;
String title="WAHOO!!", Footer="drip";
PFont titleFont, footerFont;
color green=#0CE86D, resetDefaultInk=#FFFFFF, yellow=#F9FA08;
int sizeFont, size;
float xTitle, yTitle, widthTitle, heightTitle;
float xFooter, yFooter, widthFooter, heightFooter;
//
void setup() {
  fullScreen(); //displayWidth & displayHeight
  appWidth = width;
  appHeight = height;
  //
  // population
  xTitle = appWidth*1/4;
  yTitle = appHeight*1/10; 
  widthTitle = appWidth*1/2;
  heightTitle = appHeight*2/10;
  xFooter = xTitle;
  yFooter = appHeight*7/10;
  widthFooter = widthTitle;
  heightFooter = heightTitle;
  //
  //DIVs or rect()
  //Layout our text space and typoghrapical features
  rect( xTitle, yTitle, widthTitle, heightTitle); 
  rect( xFooter, yFooter, widthFooter, heightFooter ); 
  //
  // Text Setup
  // Fonts from OS (Operating System) 
  String[] fontList = PFont.list(); //Lists all fonts available on OS
  printArray(fontList);
   titleFont =  createFont("Harrington", 55);
   footerFont =  createFont("ArialMT", 55);
  //
} //End setup
//
void draw() {
  //Text is same size or relative to rect()
  //
  //Drawing Font Code
  //
  fill(green); //ink
  textAlign(CENTER, CENTER);
  size = 50 ;
  textFont(titleFont, size);
  text (title, xTitle, yTitle, widthTitle, heightTitle);
  textFont(footerFont, size);
  fill(yellow); //ink
  textAlign(CENTER, TOP);
  text ( Footer, xFooter, yFooter, widthFooter, heightFooter );
  fill(resetDefaultInk); //ink
  //
  //
  //rect( ); //Tittle: 
  //rect( xFooter, yFooter, widthFooter, heightFooter); //Footer: 
} //End draw
//
void keyPressed() {} //End KeyPressed
//
void mousePressed() {} //End mousePressed
//
//MAIN Program  
