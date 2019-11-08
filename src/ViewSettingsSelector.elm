module ViewSettingsSelector exposing (..)
import Html exposing (Html, button, div, text)
import Html.Events
import Message exposing (Msg)

display : model -> Html Msg
display model =
 div []
 [ text "Welcome"
 , button [Html.Events.onClick Message.NextPhase ] [ text "Get Started" ]
 ]
