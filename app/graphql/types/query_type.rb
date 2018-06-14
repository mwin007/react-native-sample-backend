Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :allShops, !types[Types::ShopType] do
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, args, ctx) { Shop.all }
  end
end