-- "meta_brief.i" <-- "brief.i"

-- No parece funcionar!

--
-- Use "Visits 0." or "Visits 1000." in the START section if you want
-- the game to start in verbose or brief mode.
--

Synonyms
  largo = verbose.

Syntax
  verbose = verbose.

Meta verb verbose
  Does
    Visits 0.
    "El modo largo está activado."
End verb verbose.


Synonyms
  superbreve, breve = brief.

Syntax
  brief = brief.

Meta verb brief
  Does
    Visits 1000.
    "El modo Breve está activado. Las descripciones de las
     localizaciones solo se muestran la primera vez que las visitas."
End verb brief.
