Types::ShopType = GraphQL::ObjectType.define do
  name "Shop"
  field :id, !types.ID
  field :name, !types.String
  field :address, !types.String
  field :latitude, !types.Float
  field :longitude, !types.Float
end
