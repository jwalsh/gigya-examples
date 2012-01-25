console.log "Loaded 02-share-simple"

$.getScript "http://cdn.gigya.com/JS/socialize.js?apikey=#{GIGYA_CONFIG.APIKey}", -> console.log 'socialize.js'


$('#share').bind 'click',
    ->
      act = new gigya.services.socialize.UserAction()

      act.setTitle $('#title').html()
      act.setDescription $('#description').html()
      act.addMediaItem {
        type: 'image'
        src: $('#media-item').attr('src')
        href: $('#media-link').attr('href')  }

      PARAMS_SHARE =
        userAction: act
        operationMode: 'simpleShare'
        snapToElementID: "share"
        onError: (e) -> console.log e
        onSendDone: (e) -> console.log e
        context: 'simpleShare'
        showMoreButton: true
        showEmailButton: true

      gigya.services.socialize.showShareUI GIGYA_CONFIG, PARAMS_SHARE
