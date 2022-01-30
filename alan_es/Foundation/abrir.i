-- "abrir.i" <-- "open.i"

Add to every object
  Is
    Not cerrojable.
    cerrojo.
End add to.

synonyms
  abro, abri, abre = abrir.

Syntax
  abrir = abrir (obj)
    Where obj IsA object
      else "Eso no lo puedes abrir."

Add to every object
  Is
    Not abrible.
    Not abierto.

  Verb abrir
    Check obj is not ornamentale else
      If obj is plural
        then say msg:ornamentale_P1_pl.
        else say msg:ornamentale_P1_sg.
      End if.
    And obj is abrible
      else "¡No puedes abrir eso!"
    And obj is not abierto
      else "Ya está" say this:verb_suf.
           " abiert" say this:adj_suf.
    Does
      Make obj abierto.
      "Abres $+1."
  End verb.
End add to.


Syntax
  abrir_con = abrir (obj) con (key)
    Where obj IsA object
      else "No puedes abrir con llave eso."
    And key IsA object
      else "No puedes abrir nada con eso."

Add to every object
  Verb abrir_con
    When obj
      Check obj is not ornamentale else
        If obj is plural
          then say msg:ornamentale_P1_pl.
          else say msg:ornamentale_P1_sg.
        End if.
      And key is not ornamentale else
        If key is plural
          then say msg:ornamentale_P2_pl.
          else say msg:ornamentale_P2_sg.
        End if.
      And obj is cerrojable
        else "¡Eso no se puede abrir con llave!"
      And obj is not abierto
        else "Ya está abierto."
      And key in hero
        else say msg:no_tienes_P2.
    Does
      Make obj abierto.
      Make obj not cerrojo.
      "$+1 ahora está descerrojado."
    End verb.
End add.

----

Synonyms
  cierro, cierra, cerra = cerrar.

Syntax
  cerrar = cerrar (obj)
    Where obj IsA object
      else "Solo puedes cerrar objetos."

Add to every object
  Is not cerrable.

  Verb cerrar
    Check obj is not ornamentale else
      If obj is plural
        then say msg:ornamentale_P1_pl.
        else say msg:ornamentale_P1_sg.
      End if.
    And obj is cerrable
      else "Eso no lo puedes cerrar."
    And obj is abierto
      else "No está" say this:verb_suf.
           " abiert" say this:adj_suf. "."
    Does
      Make obj not abierto.
      "$+1 ahora está" say this:verb_suf.
      " cerrad" say this:adj_suf. "."
    End verb.
End add to.


Syntax
  cerrar_con = cerrar (obj) con (key)
    Where obj IsA object
      else "No puedes cerrar con llave eso."
    And key IsA object
      else "No puedes cerrar nada con eso."

Add to every object
  Verb cerrar_con
    When obj
      Check obj is not ornamentale else
        If obj is plural
          then say msg:ornamentale_P1_pl.
          else say msg:ornamentale_P1_sg.
        End if.
      And key is not ornamentale else
        If key is plural
          then say msg:ornamentale_P2_pl.
          else say msg:ornamentale_P2_sg.
        End if.
      And obj is cerrojable
        else "¡No puedes cerrar con llave eso!"
      And obj is not cerrojo
        else "Ya lo está."
      And key in hero
        else say msg:no_tienes_P2.
    Does
      Make obj cerrojo.
      Make obj not abierto.
      "$+1  está ahora cerrado con llave."
    End verb.
End add.
