-- "llevar.i" <-- "wear.i"

Add to every object
  Is not ponible.
     not puesto.
  Has portador nadie. -- dummy actor = unworn state. (see persona.i)
End add to object.

Synonyms
  lleva, llevo, ponerme, ponerse, ponte = llevar.
Syntax
  llevar = llevar (obj)
    Where obj IsA object
      else "No puedes llevar eso."

Add to every object
  Verb llevar
    Check obj is not ornamentale else
      If obj is plural
        then say msg:ornamentale_P1_pl.
        else say msg:ornamentale_P1_sg.
      End if.
    And obj is ponible
      else "No puedes ponerte $+1."
    And portador of obj <> hero
      else "Ya llevas puesto $+1."
    And obj is tomable
      else "No puedes tomar $+1."
    And obj in hero
      else "No llevas $+1."
    Does
      Set portador of obj to hero.
      Make obj puesto.
      "Te pones $+1."
    End verb.
End add to.

Synonyms
  quita, quito, quitarme, quitarse, quitate = quitar.

Syntax
  quitar = quitar (obj)
    Where obj IsA object
      else "No te puedes quitar eso."

Add to every object
  Verb quitar
    Check obj is not ornamentale else
      If obj is plural
        then say msg:ornamentale_P1_pl.
        else say msg:ornamentale_P1_sg.
      End if.
    And portador of obj = hero
      else "No llevas" say the obj. "."
    Does
      Set portador of obj to nadie.
      Make obj not puesto.
      "Te quitas $+1."
    End verb.
End add to.


Synonyms
  desnudo, desnuda, desnudarme, desnudate, desnudarse = desnudar.

Syntax desnudar = desnudar.

Verb desnudar
  Does
    If count in hero, IsA object, is puesto > 0 then
      For each artículo_puesto in hero, IsA object, is puesto do
        Set portador of artículo_puesto to nadie.
        Make artículo_puesto not puesto.
    End for.
      "Te quitas todo lo que llevabas puesto."
    else
      "No llevas nada que puedas quitarte."
    End if.
  End verb.
