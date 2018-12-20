defmodule HrApiWeb.Router do
  use HrApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", HrApiWeb do
    pipe_through :api
  end
end
