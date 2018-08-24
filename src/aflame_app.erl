-module(aflame_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    aflame_web:start(),
    aflame_sup:start_link(),
    lager:info("Listening to localhost:4000").

stop(_State) ->
    ok.
