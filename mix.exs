defmodule EctoRiak.Mixfile do
  use Mix.Project

  def project do
    [ app: :ecto_riak,
      version: "0.0.1",
      elixir: "~> 0.12.1-dev",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [mod: { EctoRiak, [] }]
  end

  defp deps do
    [ { :ej, github: "seth/ej" },
      { :jiffy, github: "davisp/jiffy" },
      { :meck, github: "esl/meck", override: true },
      { :pooler, github: "seth/pooler" },
      { :riakc, github: "basho/riak-erlang-client" },
      { :statebox, github: "mochi/statebox" } ]
  end
end
