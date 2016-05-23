$(document).ready(function() {
  changeTextColor();
});

function checkLightness(color) {
  var rgb = parseInt(color, 16);   // convert rrggbb to decimal
  var r = (rgb >> 16) & 0xff;  // extract red
  var g = (rgb >>  8) & 0xff;  // extract green
  var b = (rgb >>  0) & 0xff;  // extract blue

  var luma = 0.2126 * r + 0.7152 * g + 0.0722 * b; // Maths
  if (luma < 180) {
    // Is the color light?
    return true;
  } else {
    // Or is the color dark?
    return false;
  }
}

function changeTextColor() {
  var allTheColorCards = $(".card");
  for (var i = 0; i < allTheColorCards.length; i++) {
    // Formatting the #hexval
    var hex = $(allTheColorCards[i]).attr("style").split(" ").pop();
    hex = hex.split("");
    hex.pop();
    hex.shift();
    hex = hex.join("");
    // Set the text color based on return of checkLightness fxn
    if (checkLightness(hex)) {
      $("span.color-name").eq(i).css("color", "white");
    } else {
      $("span.color-name").eq(i).css("color", "grey");
    }
  }
}
