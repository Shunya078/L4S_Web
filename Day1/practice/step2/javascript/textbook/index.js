// jQueryで書かれたコード
$(function () {
  $('.text-area').html('<p>Hello World!</p>')
})

$(".text-area").click(function () {
  $(this).css("color", "green")
})

// javascriptで書かれたコード
document.getElementById("text-area2").innerHTML = "<p>Hello World!</p>"

document.getElementById("text-area2").onclick = function () {
  document.getElementById("text-area2").setAttribute("style", "color:red;");
}
