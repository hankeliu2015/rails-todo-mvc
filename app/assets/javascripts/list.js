$function() {
  $("imput.toggle").on("change", function(){
    $(this).parents('form').trigger("submit")
    })
}
