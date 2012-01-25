console.log "Loaded 02-share-simple"

$.getScript "http://cdn.gigya.com/JS/socialize.js?apikey=#{GIGYA_CONFIG.APIKey}", ->

    PARAMS_BOOKMARK =
      providers: "twitter"
      url: window.location.href
      title: $('#title').html()
      description: $('#description').html()

    gigya.services.socialize.postBookmark GIGYA_CONFIG, PARAMS_BOOKMARK
