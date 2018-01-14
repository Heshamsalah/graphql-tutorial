Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # queries are just represented as fields
  field :allLinks, !types[Types::LinkType] do
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, args, ctx) { Link.all }
  end

  field :allPosts, !types[Types::PostType] do
    resolve -> (obj, args, ctx) { Post.all }    
  end
end
