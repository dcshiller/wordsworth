module Main exposing (main)

import Browser
import GameState
import GameStatus exposing (GamePhase)
import Player
import ViewSettingsSelector
import ViewBidder
import ViewBuilder
import ViewGameOver
import Message exposing (Msg(..))

main =
  Browser.sandbox
  { init = init
  , update = update
  , view = view
  }

type alias Model =
  { gameState: GameState.Type
  , gameStatus: GameStatus.Type
  , players: List Player.Type
  }

init =
  { gameState = GameState.initialGameState
  , gameStatus = GameStatus.initialGameStatus
  , players = Player.initialPlayers
  }

update : Msg -> Model -> Model
update msg model =
  case msg of
    NextPhase -> { model | gameStatus = GameStatus.nextPhase(model.gameStatus) }

view model =
  case model.gameStatus.phase of
    GameStatus.Settings -> ViewSettingsSelector.display model
    GameStatus.Bidding -> ViewBidder.display model
    GameStatus.Building -> ViewBuilder.display model
    GameStatus.GameOver -> ViewGameOver.display model
