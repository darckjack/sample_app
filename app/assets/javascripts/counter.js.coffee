$ ->
  
  # Definimos variables que utilizaremos
  #
  #   value: En ella almacenaremos cuantos caracteres hay en el
  #          área de content.
  #
  #   counter: Almacenará el número de caracteres restantes,
  #             descontando el value actual desde el máximo (140).
  #
  #   parrafo: Almacenará en que tipo de clase (estilo) se mostrará el
  #            content (verde si no se ha pasado el límite, rojo si se
  #            sobrepasado).
  #
  #
  value = undefined
  counter = undefined
  parrafo = undefined
  
  # Mostramos un content inicial y lo añadimos al div de id counter.
  $("<p class=\"indicator\">You have 140 remaining characters</p>").appendTo "#counter"
  
  # Definimos el evento para que detecte cada vez que se presione una tecla.
  $("#content").keydown ->
    
    # Redefinimos el value de counter al máximo permitido (150).
    counter = 140
    
    # Quitamos el párrafo con clase warning o indicator, en caso de que ya se
    #   haya mostrado un content 
    $(".warning").remove()
    $(".indicator").remove()
    
    # Tomamos el value actual del contenido del área de contento
    value = $("#content").val().length

    # Descontamos ese value al máximo.
    counter = counter - value
        
    # Dependiendo de cuantos caracteres quedan, mostraremos el content de una
    #   u otra forma (lo definiremos a continuación mediante CSS 
    if counter < 0
      parrafo = "<p class=\"warning\">"
    else
      parrafo = "<p class=\"indicator\">"
    
    # Mostramos el content con el número de caracteres restantes.
    $("#counter").append parrafo + "You have " + counter + " remaining characters</p>"
