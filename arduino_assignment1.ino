bool alarm = false;
bool armed = false;
#define LED 5

void setup()
{
  pinMode(2, INPUT_PULLUP);
  pinMode(3, INPUT_PULLUP);
  pinMode(4, INPUT_PULLUP);
  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(LED, OUTPUT);
  Serial.begin(9600);
}

void loop()
{
  int ch;
  int m1 = digitalRead(2);
  int m2 = digitalRead(3);
  int r = digitalRead(4);
  if(Serial.available()) {
    ch = Serial.parseInt();
    if(ch == 32) {
      if(m1 == 1 & m2 == 1 & r == 1) {
        Serial.println("ARM");
        armed = true;
      } else {
        Serial.println("ARM FAILURE, SET OFF ALL SWITCHES.");
      }
    } else if(ch == 4) {
      armed = false;
      alarm = false;
      Serial.println("DISARM");
      digitalWrite(LED_BUILTIN, LOW);
      digitalWrite(LED, LOW);
    }
  }
  if(armed) {
    if(m1 == 0 | m2 == 0 | r == 0 | alarm) {
      alarm = true;
      Serial.println("BURGLARS!!!!");
      digitalWrite(LED_BUILTIN, HIGH);
      digitalWrite(LED, HIGH);
      delay(250);
      digitalWrite(LED_BUILTIN, LOW);
      digitalWrite(LED, LOW);
      delay(250);
    }
  } 
}