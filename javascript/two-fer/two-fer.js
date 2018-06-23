var TwoFer = function () {};

TwoFer.prototype.twoFer = function (who) {
  if (who == null || typeof(who) === "undefined") return "One for you, one for me.";
  return "One for " + who + ", one for me.";
};

module.exports = TwoFer;
