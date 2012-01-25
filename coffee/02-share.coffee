start = new Date()
console.log "Loaded 02-share at #{start}"

isGigyaLoaded = () ->
  diff = new Date() - start 
  if (typeof gigya != 'object')
    console.log "Gigya undefined at #{diff}ms"
    setTimeout(isGigyaLoaded, 25)
  else
    console.log "Gigya available after #{diff}ms" 
    $('#like').click()

isGigyaLoaded()

$.getScript "http://cdn.gigya.com/JS/socialize.js?apikey=#{GIGYA_CONFIG.APIKey}", ->

  act = new gigya.services.socialize.UserAction()

  act.setTitle $('#title').html()
  act.setDescription $('#description').html()
  act.addMediaItem {
    type: 'image'
    src: $('#media-item').attr('src')
    href: $('#media-link').attr('href')  }

  PARAMS_SHARE =
      userAction: act

  $('#like').bind 'click',
    ->
      gigya.services.socialize.showShareUI GIGYA_CONFIG, PARAMS_SHARE


