
$(function(){
  $("input.toggle").on("change", function(){
    console.log('worked');
    $(this).siblings("form").trigger("submit")
  })
});

// $(function(){
//   $("input.toggle").on("change", function(){
//     console.log('worked');
//     $(this).parents("form").trigger("submit")
//   })
// });

function test123() {
  console.log("this is the funcion");
}

// hide the element when clicked.
function hideWhenClicked(e){
  e.preventDefault();
  const $target = $(e.target);
  $target.hide();
}

$('#hide_this').click(hideWhenClicked)
$('.hide_this').click(hideWhenClicked)
