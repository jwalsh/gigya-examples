(function() {
  console.log('03-comment.coffee');
  $('#comment-core').bind('submit', function() {
    console.log('Processing submission');
    return false;
  });
}).call(this);
