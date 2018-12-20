defmodule HrApi.Github.InMemory do
  @moduledoc """
  Fake adapter for use in test/dev environment.
  """

  @doc false
  def get_user_info(name) when is_binary(name) do
    {:ok,
     %{
       "avatar_url" => "https://avatars0.exampleusercontent.com/u/1101111?v=4",
       "bio" => nil,
       "blog" => "",
       "company" => nil,
       "created_at" => "2015-01-01T10:01:45Z",
       "email" => "random_account_email@example.com",
       "events_url" => "https://api.example.com/users/random_account/events{/privacy}",
       "followers" => 11,
       "followers_url" => "https://api.example.com/users/random_account/followers",
       "following" => 51,
       "following_url" => "https://api.example.com/users/random_account/following{/other_user}",
       "gists_url" => "https://api.example.com/users/random_account/gists{/gist_id}",
       "gravatar_id" => "",
       "hireable" => true,
       "html_url" => "https://example.com/random_account",
       "id" => 1_101_111,
       "location" => "United Kingdom",
       "login" => "random_account",
       "name" => "Jane",
       "node_id" => "MDQ4VXNlcjU6MRUzOTc=",
       "organizations_url" => "https://api.example.com/users/random_account/orgs",
       "public_gists" => 0,
       "public_repos" => 24,
       "received_events_url" => "https://api.example.com/users/random_account/received_events",
       "repos_url" => "https://api.example.com/users/random_account/repos",
       "site_admin" => false,
       "starred_url" => "https://api.example.com/users/random_account/starred{/owner}{/repo}",
       "subscriptions_url" => "https://api.example.com/users/random_account/subscriptions",
       "type" => "User",
       "updated_at" => "2018-11-11T15:19:07Z",
       "url" => "https://api.example.com/users/random_account"
     }}
  end
end
