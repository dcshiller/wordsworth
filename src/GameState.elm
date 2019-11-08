module GameState exposing (Type, initialGameState)

type alias Type =
  { remainingLetters: List Char
  }

alphabet : List Char
alphabet =
  [ 'a'
  , 'b'
  , 'c'
  , 'd'
  , 'e'
  , 'f'
  , 'g'
  , 'h'
  , 'i'
  , 'j'
  , 'k'
  , 'l'
  , 'm'
  , 'n'
  , 'o'
  , 'p'
  , 'q'
  , 'r'
  , 's'
  , 't'
  , 'u'
  , 'v'
  , 'w'
  , 'x'
  , 'y'
  , 'z'
  ]

initialGameState : Type
initialGameState =
  { remainingLetters = alphabet
  }
