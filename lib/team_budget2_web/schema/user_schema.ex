defmodule TeamBudget2Web.Schema.User do
  use Absinthe.Schema.Notation
  alias alias TeamBudget2Web.Resolvers

  object :user do
    field :id, :string
    field :first_name, :string
    field :last_name, :string
    field :email, :string
    field :role, :string
  end

  object :user_queries do
    @desc "list of all users"
    field :users, list_of(:user) do
      resolve(&Resolvers.User.list_users/3)
    end
  end
end
