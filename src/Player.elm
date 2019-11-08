module Player exposing (Type, initialPlayers, first)

type alias Type =
  { name : String
  }

initialPlayers : List Type
initialPlayers =
  [ { name = "test" }
  , { name = "test2" }
  ]

dummy : Type
dummy =
  { name = "dummy" }


supplyDummy : Maybe Type -> Type
supplyDummy maybe =
  case maybe of
    Nothing  -> dummy
    Just a -> a

first : List Type -> Type
first list =
  supplyDummy <| List.head list
