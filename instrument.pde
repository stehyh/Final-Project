import ddf.minim.*;
import ddf.minim.ugens.*;
import java.util.Map;

Minim minim;
AudioOutput soundOut;
HashMap<Character,PianoKey> keymap = new HashMap<Character,PianoKey>();

void setup()
{
  size(1200, 500);
  minim = new Minim(this);
  soundOut = minim.getLineOut();
  keymap.put('q', new PianoKey(color(255),0,0, "C4"));
  keymap.put('w', new PianoKey(color(255),100,0, "C#4"));
  keymap.put('e', new PianoKey(color(255),200,0, "D4"));
  keymap.put('r', new PianoKey(color(255),300,0, "D#4"));
  keymap.put('t', new PianoKey(color(255),400,0, "E4"));
  keymap.put('y', new PianoKey(color(255),500,0, "F4"));
  keymap.put('u', new PianoKey(color(255),600,0, "F#4"));
  keymap.put('i', new PianoKey(color(255),700,0, "G4"));
  keymap.put('o', new PianoKey(color(255),800,0, "G#4"));
  keymap.put('p', new PianoKey(color(255),900,0, "A4"));
  keymap.put('[', new PianoKey(color(255),1000,0, "A#4"));
  keymap.put(']', new PianoKey(color(255),1100,0, "B4"));
}

void draw() {
  background(0);
  for (Map.Entry entry : keymap.entrySet()){
    PianoKey pianoKey = (PianoKey)entry.getValue();
    pianoKey.display();
  }
}
