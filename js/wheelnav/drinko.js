var piemenu

window.onload = function () {

  piemenu = new wheelnav('piemenu', null, 550, 450);
  piemenu.markerEnable = true;
  piemenu.markerPathFunction = markerPath().TriangleMarker;
  piemenu.clockwise = false;
  piemenu.sliceInitPathFunction = piemenu.slicePathFunction;
  piemenu.initPercent = .1;
  piemenu.titleSelectedAttr = { fill: "#111" };
  piemenu.titleRotateAngle = 180;
  piemenu.createWheel();
  spin();
};

function spin() {
  piemenu.rotateRoundCount = 15;
  piemenu.navigateWheel(Math.floor(Math.random() * 8));
}
