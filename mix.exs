defmodule EctoRiak.Mixfile do
  use Mix.Project

  def project do
    [ app: :ecto_riak,
      version: "0.0.1",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [mod: { EctoRiak, [] }]
  end

  defp deps do
    [ { :jazz, github: "meh/jazz" },
      { :meck, "0.8.1", github: "basho/meck", tag: "0.8.1", compile: "rebar compile", override: true },  ## conflicting deps
      { :pooler, github: "seth/pooler" },
      { :riakc, github: "basho/riak-erlang-client", ref: "90b6d000ea1f209d4e6673a72d92ca48a2ae2529" },
      { :statebox, github: "mochi/statebox" } ]
  end
end
