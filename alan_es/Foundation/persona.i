﻿-- "persona.i" <-- "people.i"

-- Clases para personas

Every persona IsA actor
  Is not named.       -- Si tiene nombre propio
  Description
    If this is not named then
      "Hay" say an this. "aquí."
    else
      Say this. "está aquí."
    End if.
End every persona.

Every macho IsA persona
  Pronoun him.
End every macho.

Every hembra IsA persona
  Is femenina.
  Pronoun her.
End every hembra.

The nadie IsA actor at limbo
  -- Dummy actor used to indicate items not being worn, etc.
End the.
