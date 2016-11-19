command: "echo $(/usr/local/bin/kwmc query space active tag)"

refreshFrequency: 1000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="foc"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".foc span:first-child", el).text("  #{output}")
    $icon = $(".foc span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-bars")

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font: 12px "Dejavu Sans Mono for Powerline"
  height: 16px
  left: 10px
  overflow: hidden
  text-overflow: ellipsis
  top: 2px
  width: auto
"""
