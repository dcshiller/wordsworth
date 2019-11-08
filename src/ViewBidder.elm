module ViewBidder exposing (display)
import Html exposing (..)
import Message exposing (Msg)
import Html.Events

display : model -> Html Msg
display model =
 div []
  [ text "Bid"
  , button [Html.Events.onClick Message.NextPhase ] [ text "Finish Bidding" ]
  ]
