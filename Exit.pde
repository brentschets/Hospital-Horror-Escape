void Exit() {
  background(0);
  text("Congrats, you escaped and your score is " + nf(int(time1), 1) + time2, width/2, height/2);
  if(keyPressed) {exit();}
}