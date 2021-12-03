-- "escenario.i" <-- "scenery.i"

Every escenario IsA object -- @NOTE: Change 'escenario' for a more
                           -- understandable word in Spanish.
  Is
    Not buscable.
    Not tomable.
    Not empujable.
    Not tocable.
  Description "" -- para que no se liste en las descripciones

  Verb examinar
    Does only
      If xDesc of obj <> ""
        then say xDesc of obj.
        else
          Say "Olvida $+1, no".
          If obj is not plural
            then "es importante."
            else "son importantes."
          End If.
      End If.
    End Verb examinar.
End Every escenario.

