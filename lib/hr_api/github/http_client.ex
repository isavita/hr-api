defmodule HrApi.Github.HTTPClient do
  @moduledoc """
  Module for integrating with Github API using tentacat library.
  """

  require Tentacat

  @github_endpoint "https://api.github.com/"
  @client Tentacat.Client.new(
            %{access_token: System.get_env("GITHUB_API_ACCESS_TOKEN")},
            @github_endpoint
          )

  @doc "Gets information for an user account if exists."
  @spec get_user_info(String.t()) :: {:ok, map()} | {:error, String.t() | atom()}
  def get_user_info(name) when is_binary(name) do
    case Tentacat.Users.find(@client, name) do
      {200, user_data, _response_info} -> {:ok, user_data}
      {404, _, _} -> {:error, :not_found}
      {status, _, _} -> {:error, "Github API's response status code is #{status}"}
    end
  end
end
