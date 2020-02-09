// jQueryで書かれたコード
$(function () {
  $('.text-area').html('<p>Hello World!</p>')
})

$(".change-green").click(function () {
  $('.text-area').css("color", "green")
})

$(".change-red").click(function () {
  $('.text-area').css("color", "red")
})

$(".change-hello").click(function () {
  $('.text-area').html('<p>Change World!</p>')
})