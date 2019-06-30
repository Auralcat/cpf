defmodule CPF.MixProject do
  use Mix.Project

  def project do
    [
      app: :cpf,
      version: "0.5.1",
      elixir: "~> 1.5",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      elixirc_paths: elixirc_paths(Mix.env()),
      name: "CPF",
      docs: docs()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    []
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.20", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.0.0-rc.6", only: [:dev, :test], runtime: false},
      {:credo, "~> 1.1", only: [:dev, :test], runtime: false},
      {:excoveralls, "~> 0.10", only: [:dev, :test], runtime: false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support.exs"]
  defp elixirc_paths(_), do: ["lib"]

  def description do
    "A Brazilian CPF validation written in Elixir."
  end

  def package do
    [
      name: "cpf",
      maintainers: ["Ulisses Almeida"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/ulissesalmeida/cpf"}
    ]
  end

  def docs do
    [
      source_url: "https://github.com/ulissesalmeida/cpf",
      extras: ["README.md"]
    ]
  end
end
