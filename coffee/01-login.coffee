# dependency: config.coffee
# http://developers.gigya.com/020_Client_API/020_Methods/Socialize.showLoginUI
# http://wiki.gigya.com/010_Developer_Guide/10_Social_Login/001_Quick_start
console.log "http://cdn.gigya.com/JS/socialize.js?apikey=#{GIGYA_CONFIG.APIKey}"

$.getScript "http://cdn.gigya.com/JS/socialize.js?apikey=#{GIGYA_CONFIG.APIKey}", ->
  PARAMS_LOGIN =
    containerID: "login"
    redirectURL: window.location.href

  gigya.services.socialize.showLoginUI GIGYA_CONFIG, PARAMS_LOGIN

  #        http://developers.gigya.com/020_Client_API/020_Methods/socialize.getUserInfo
  PARAMS_USER =
    callback: (response) ->
      console.log response
      $('#summary').html JSON.stringify response.user

  gigya.services.socialize.getUserInfo GIGYA_CONFIG, PARAMS_USER
