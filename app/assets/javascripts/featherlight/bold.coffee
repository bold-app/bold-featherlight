featherlightOptions = ->
  type: 'image',
  beforeOpen: ->
    self = this
    self.$instance
      .find '.'+self.namespace+'-content'
      .append $('<div class="caption"></div>')
  beforeContent: ->
    self = this
    caption = self.$currentTarget.parent('figure').find('figcaption').html()
    self.$instance
      .find '.caption'
      .html caption
  onResize: ->
    self = this
    width = self.$instance.find('img').css 'width'
    self.$instance
      .find '.caption'
      .css 'width', width

$ ->
  $('.featherlight-lightbox figure.image a')
    .featherlight featherlightOptions()

  $('.featherlight-gallery figure.image a')
    .featherlightGallery featherlightOptions()

