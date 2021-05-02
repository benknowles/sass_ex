defmodule SassEx.Importer do
  @moduledoc """
  Definies the behaviour for a custom Sass importer
  """

  @type result_t :: {:ok, String.t()} | {:error, String.t()}

  @doc """
  Convert a filename into a URI

  e.g. "example.scss" -> "file:///example.scss"
  """
  @callback canonicalize(struct | nil, String.t()) :: result_t | nil

  @doc """
  Load a URI from the importer

  Takes in a URI generated by canonicalize/2 and returns a string
  representative of the file or an error
  """
  @callback load(struct | nil, String.t()) :: result_t
end
