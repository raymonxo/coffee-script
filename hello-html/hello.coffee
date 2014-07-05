canvas = document.getElementById 'coffee'

offset = 1

draw = ->
  ctx = canvas.getContext '2d'
  ctx.fillStyle = 'rgb(200,0,0)'
  ctx.fillRect(offset % 30, offset % 30, 55, 50)
  ctx.fillStyle = 'rgba(0,0,200,0.5)'
  ctx.fillRect(30,30,55,50)
  ++offset

setInterval(draw, 1000)