-- "mensajes_libreria.i" <- "messages_library.i" (added in Foundation)
-- =============================================================================

-- This module defines recurring library messages as string attributes on the
-- hidden 'msg' location, so that their text can be changed in a single place,
-- as well as to reduce strings redundancy.

-- =============================================================================


The msg IsA location at limbo. Has
  violencia_no_es_solución "La violencia no es la solución.
                            Por lo menos, no siempre.".

  ornamentale_P1_sg "Olvida $+1, no es importante.".
  ornamentale_P1_pl "Olvida $+1, no son importantes.".
  ornamentale_P2_sg "Olvida $+2, no es importante.".
  ornamentale_P2_pl "Olvida $+2, no son importantes.".

  no_tienes_P1 "No tienes $+1!".
  no_tienes_P2 "No tienes $+2!".

End the msg.
