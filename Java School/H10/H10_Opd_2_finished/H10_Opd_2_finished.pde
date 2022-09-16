import controlP5.*;

ControlP5 cp;

Button knop1;
Textfield TF1;

void setup(){
size(800,800);
  
cp = new ControlP5(this);

knop1 = cp.addButton("Knop1")
          .setPosition(200,200)
          .setSize(200,50)
          .setCaptionLabel("Enter");

TF1 = cp.addTextfield("TextField1")
        .setPosition(200,300)
        .setSize(200,40)
        .setText("XD");

}

void draw(){

}

void Knop1(){
 println("user said, " + TF1.getText());
}
