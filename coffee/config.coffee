window.GIGYA_CONFIG =
        APIKey: "2_VlVGsWWoM3S4JNJr0cwrLChl9vudyorQosdeAZpeh4KfLOGONIHlH8jGocejwWMr"
        # enabledProviders: "myspace, aol, foursquare, renren, vkontakte, blogger, foursquare, linkedin, orkut, facebook, twitter, yahoo, google, myspace"
        onSiteLoginClicked: () -> alert "onSiteLoginClicked"
        onCommentSubmitted: (e) -> 
                            console.log e
                            alert "commentSubmitted"

console.log "config.coffee for #{GIGYA_CONFIG.APIKey}"

