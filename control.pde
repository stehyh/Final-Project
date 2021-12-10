void keyPressed() {
  if (keymap.get(key) != null) {
    keymap.get(key).keyDown(soundOut);
  }
}

void keyReleased() {
  if (keymap.get(key) != null) {
    keymap.get(key).keyUp(soundOut);
  }
}
