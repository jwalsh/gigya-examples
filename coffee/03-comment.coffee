console.log '03-comment.coffee'

$('#comment-core').bind 'submit', ->
        console.log 'Processing submission'
        return false

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

  gigya.services.socialize.showCommentsUI({containerID: 'commentui'})  
