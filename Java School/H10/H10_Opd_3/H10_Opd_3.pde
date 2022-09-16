import controlP5.*;

ControlP5 cp;

Button knop1;
Textfield TF1;

int cijfer;
int result;
String text;


void setup(){
size(800,800);
  
cp = new ControlP5(this);

knop1 = cp.addButton("Knop1")
          .setPosition(200,200)
          .setSize(200,50)
          .setCaptionLabel("Enter");

TF1 = cp.addTextfield("TextField1")
        .setPosition(200,300)
        .setSize(200,40);

}

void draw(){

}

void Knop1(){
cijfer = Integer.valueOf(TF1.getText());
result = cijfer + (cijfer / 100) * 21;
println(result);
}
