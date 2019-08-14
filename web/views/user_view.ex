defmodule PhoenixHerokuTest.UserView do
  use PhoenixHerokuTest.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, PhoenixHerokuTest.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, PhoenixHerokuTest.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      nickname: user.nickname,
      email: user.email}
  end
end
