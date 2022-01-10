-- "messages_library.i" (added)
-- =============================================================================

-- This module defines recurring library messages as string attributes on the
-- hidden 'msg' location, so that their text can be changed in a single place,
-- as well as to reduce strings redundancy.

-- =============================================================================


-- tag::lib_msgs_def1[]
The msg IsA location at nowhere. Has
  violence_not_the_answer "Violence is not the answer.".
-- end::lib_msgs_def1[]

-- tag::lib_msgs_def2[]
  ornamental_response_P1_sg "Forget $+1, it's not important.".
  ornamental_response_P1_pl "Forget $+1, they're not important.".
  ornamental_response_P2_sg "Forget $+2, it's not important.".
  ornamental_response_P2_pl "Forget $+2, they're not important.".
-- end::lib_msgs_def2[]

  you_dont_have_P1 "You don't have $+1!".
  you_dont_have_P2 "You don't have $+2!".

End the msg.
