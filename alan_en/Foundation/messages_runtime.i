-- "messages_runtime.i" (added)

MESSAGE
-- =============================================================================

-- LISTING CONTAINERS' CONTENTS

-- =============================================================================

-- These messages are used when listing the contents of containers, which can be
-- either container objects or actors.

CARRIES:
  IF parameter1 IS NOT plural
    THEN "$+1 is carrying"
    ELSE "$+1 are carrying"
  END IF.

CONTAINS:
  IF parameter1 IS NOT plural
    THEN "$+1 contains"
    ELSE "$+1 contain"
  END IF.

-- The IF blocks in the following group of messages adds "(being worn)" after
-- every item worn by an actor, when using `LIST actor`.

CONTAINS_COMMA: "$01"
  IF parameter1 IsA object THEN
    IF parameter1 IS worn
      THEN "(being worn)"
    END IF.
  END IF.
  "$$,"
CONTAINS_AND: "$01"
  IF parameter1 IsA object THEN
    IF parameter1 IS worn
      THEN "(being worn)"
    END IF.
  END IF.  "and"
CONTAINS_END: "$01"
  IF parameter1 IsA object THEN
    IF parameter1 IS worn
      THEN "(being worn)"
    END IF.
  END IF. "."

IS_EMPTY:
  IF parameter1 IS NOT plural
    THEN "$+1 is empty."
    ELSE "$+1 are empty."
  END IF.

EMPTY_HANDED:
  -- @TODO: Use "empty handed" only with PERSON actors!
  IF parameter1 IS NOT plural
    THEN "$+1 is empty-handed."
    ELSE "$+1 are empty-handed."
  END IF.

