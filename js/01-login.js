(function() {
  var CONF, PARAMS;
  CONF = {
    APIKey: "2_VlVGsWWoM3S4JNJr0cwrLChl9vudyorQosdeAZpeh4KfLOGONIHlH8jGocejwWMr",
    enabledProviders: "facebook, twitter, yahoo, google, linkedin, myspace, foursquare, orkut, blogger"
  };
  PARAMS = {
    containerID: "login",
    cid: '',
    width: 220,
    height: 60,
    redirectURL: "http://wikifiles.gigya.com/Socialize/PostLoginPage.htm",
    showTermsLink: false,
    hideGigyaLink: true
  };
  $.getScript("http://cdn.gigya.com/JS/socialize.js?apikey=" + CONF.APIKey, function() {
    console.log("Gigya enabled with " + CONF.APIKey);
    return gigya.services.socialize.showLoginUI(CONF, PARAMS);
  });
}).call(this);
