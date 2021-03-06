class Launcher {

  String[] resList;
  Integer[] resXList, resYList, x1, x2, y1, y2, red, green, blue;
  int cur, lines;
  Dropdown d;
  Button select;

  void res(float a, float b) {
    String AR = Float.toString(a/b);
    switch(AR) {
      case ("1.7777778"):
      resList = new String[8];
      resXList = new Integer[8];
      resYList = new Integer[8];
      resList[0] = "1024 x 576";
      resXList[0] = 1024;
      resYList[0] = 576;
      resList[1] = "1152 x 648";
      resXList[1] = 1152;
      resYList[1] = 648;
      resList[2] = "1280 x 720";
      resXList[2] = 1280;
      resYList[2] = 720;
      resList[3] = "1366 x 768";
      resXList[3] = 1366;
      resYList[3] = 768;
      resList[4] = "1600 x 900";
      resXList[4] = 1600;
      resYList[4] = 900;
      resList[5] = "1920 x 1080";
      resXList[5] = 1920;
      resYList[5] = 1080;
      resList[6] = "2560 x 1440";
      resXList[6] = 2560;
      resYList[6] = 1440;
      resList[7] = "3840 x 2160";
      resXList[7] = 3840;
      resYList[7] = 2160;
      break;
      case ("1.6"):
      resList = new String[8];
      resXList = new Integer[8];
      resYList = new Integer[8];
      resList[0] = "640 x 480";
      resXList[0] = 640;
      resYList[0] = 480;
      resList[1] = "800 x 600";
      resXList[1] = 800;
      resYList[1] = 600;
      resList[2] = "960 x 720";
      resXList[2] = 960;
      resYList[2] = 720;
      resList[3] = "1024 x 768";
      resXList[3] = 1024;
      resYList[3] = 768;
      resList[4] = "1280 x 960";
      resXList[4] = 1280;
      resYList[4] = 960;
      resList[5] = "1440 x 1080";
      resXList[5] = 1440;
      resYList[5] = 1080;
      resList[6] = "1600 x 1200";
      resXList[6] = 1600;
      resYList[6] = 1200;
      resList[7] = "1920 x 1440";
      resXList[7] = 1920;
      resYList[7] = 1440;
      break;
      case("1.3333334"):
      resList = new String[5];
      resXList = new Integer[5];
      resYList = new Integer[5];
      resList[0] = "1280 x 800";
      resXList[0] = 1280;
      resYList[0] = 800;
      resList[1] = "1440 x 900";
      resXList[1] = 1440;
      resYList[1] = 900;
      resList[2] = "1680 x 1050";
      resXList[2] = 1680;
      resYList[2] = 1050;
      resList[3] = "1920 x 1200";
      resXList[3] = 1920;
      resYList[3] = 1200;
      resList[4] = "2560 x 1600";
      resXList[4] = 2560;
      resYList[4] = 1600;
      break;
    default:
      resList = new String[8];
      resXList = new Integer[8];
      resYList = new Integer[8];
      resList[0] = "1024 x 576";
      resXList[0] = 1024;
      resYList[0] = 576;
      resList[1] = "1152 x 648";
      resXList[1] = 1152;
      resYList[1] = 648;
      resList[2] = "1280 x 720";
      resXList[2] = 1280;
      resYList[2] = 720;
      resList[3] = "1366 x 768";
      resXList[3] = 1366;
      resYList[3] = 768;
      resList[4] = "1600 x 900";
      resXList[4] = 1600;
      resYList[4] = 900;
      resList[5] = "1920 x 1080";
      resXList[5] = 1920;
      resYList[5] = 1080;
      resList[6] = "2560 x 1440";
      resXList[6] = 2560;
      resYList[6] = 1440;
      resList[7] = "3840 x 2160";
      resXList[7] = 3840;
      resYList[7] = 2160;
      break;
    }
    d = new Dropdown(220, 250, 320, 270, resList, 100, null);
    select = new Button(90, 335, 200, 355, color(100, 150, 180));
    lines = round(random(5, 20));
    red = new Integer[lines];
    green = new Integer[lines];
    blue = new Integer[lines];
    x1 = new Integer[lines];
    x2 = new Integer[lines];
    y1 = new Integer[lines];
    y2 = new Integer[lines];
    for (int i = 0; i < lines; i++) {
      red[i] = round(random(0, 255));
      blue[i] = round(random(0, 255));
      green[i] = round(random(0, 255));
      x1[i] = round(random(80, 320));
      y1[i] = round(random(55, 200));
      x2[i] = round(random(80, 320));
      y2[i] = round(random(55, 200));
    }
  }


  void render() {
    background(200);
    rec(-1, -1, width, 20, color(230));
    rec((width/2)-125, 50, (width/2)+125, height-25, color(230));
    rec(80, 55, 320, 200, 0);
    for (int i = 0; i < lines; i++) {
      stroke(red[i], green[i], blue[i]);
      line(x1[i], y1[i], x2[i], y2[i]);
    }
    stroke(0);
    line(80, 210, 320, 210);
    rec(80, 220, 320, 240, 255);
    fill(0);
    text("Stunning Octo Sniffle", 142, 236);
    rec(80, 250, 210, 365, 255);

    select.render("startProg");
    select.txt("Start");

    d.render("Resolution", this);

    fill(0);
    text("Selected Resolution : ", 90, 280);
    text(resList[cur], 90, 295);
  }
}
