mediator = require 'mediator'
Header = require 'models/header'
HeaderView = require 'views/header_view'

class HeaderViewTest extends HeaderView
  renderTimes: 0

  render: ->
    super
    @renderTimes += 1

describe 'HeaderView', ->
  beforeEach ->
    @model = new Header()
    @view = new HeaderViewTest({@model})

  afterEach ->
    @view.dispose()
    @model.dispose()

  it 'should display 4 links', ->
    expect(@view.$el.find 'a').to.have.length 4
