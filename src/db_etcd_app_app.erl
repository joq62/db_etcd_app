%%%-------------------------------------------------------------------
%% @doc db_etcd_app public API
%% @end
%%%-------------------------------------------------------------------

-module(db_etcd_app_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    db_etcd_app_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
