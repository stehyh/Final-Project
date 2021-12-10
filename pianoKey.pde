class PianoKey {
  color originalColor;
  color currColor;
  float xpos;
  float ypos;
  float frequency;
  boolean activeKey;
  float counter;
  Oscil wave;
  
  // The Constructor is defined with arguments.
  PianoKey(color tempC, float tempXpos, float tempYpos, String tempFrequency) {
    currColor = tempC;
    originalColor = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    frequency = Frequency.ofPitch(tempFrequency).asHz();
    wave = new Oscil( frequency, 0.25f, Waves.SINE );
    activeKey = false;
    counter = 0.0;
  }

  void display() {
    stroke(0);
    fill(currColor);
    rectMode(CORNER);
    rect(xpos,ypos,100,500);
    if (activeKey) {
    currColor = lerpColor(color(255,255,255), color(#050190), counter);
    counter = counter + 0.005;
    }
  }

  void keyDown(AudioOutput soundOut) {
    if (!activeKey) {
      wave.patch(soundOut);
      activeKey = true;
    }
  }
  
  void keyUp(AudioOutput soundOut) {
    wave.unpatch(soundOut);
    activeKey = false;
    currColor = originalColor;
    counter = 0.0;
  }
}
