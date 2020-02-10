// jQueryで書かれたコード
$(function () {
  $('.text-area').html('<p>Hello World!</p>')
})

$(function () {
  $(".text-area").click(function () {
    $(this).css("color", "green")
  })
})

// javascriptで書かれたコード
document.addEventListener("DOMContentLoaded", function () {
  document.getElementById("text-area2").innerHTML = "<p>Hello World!</p>"
});

document.addEventListener("DOMContentLoaded", function () {
  document.getElementById("text-area2").onclick = function () {
    document.getElementById("text-area2").setAttribute("style", "color:red;");
  }
});
