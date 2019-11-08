module GameStatus exposing (..)
import Player

type GamePhase = Settings | Bidding | Building | GameOver

type alias Type =
  { phase : GamePhase
  , activePlayer : Player.Type
  }

initialGameStatus : Type
initialGameStatus =
  { phase = Settings
  , activePlayer = Player.first Player.initialPlayers
  }


advancePhase : GamePhase -> GamePhase
advancePhase phase =
  case phase of
    Settings -> Bidding
    Bidding -> Building
    Building -> GameOver
    GameOver -> GameOver

nextPhase : Type -> Type
nextPhase gameStatus =
  { gameStatus | phase = advancePhase(gameStatus.phase) }
