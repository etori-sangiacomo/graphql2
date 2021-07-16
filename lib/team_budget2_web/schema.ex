defmodule TeamBudget2Web.Schema do
  use Absinthe.Schema

  import_types(TeamBudget2Web.Schema.User)

  query do
    import_fields(:user_queries)
  end
end
