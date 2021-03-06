require "csv"

CSV.foreach("db/seeds/user.csv", headers: true) do |row|
  User.create!(
    email: row["email"],
    nickname: row["nickname"],
    password: row["encrypted_password"],
    reset_password_token: row["reset_password_token"],
    reset_password_sent_at: row["reset_password_sent_at"],
    remember_created_at: row["remember_created_at"]
  )
end

CSV.foreach("db/seeds/category.csv", headers: true) do |row|
  Category.create!(
    name: row["name"]
  )
end

CSV.foreach("db/seeds/item.csv", headers: true) do |row|
  Item.create!(
    name: row["name"],
    price: row["price"],
    status: row["status"],
    brand: row["brand"],
    shipping_fee: row["shipping_fee"],
    shipping_method: row["shipping_method"],
    owners_area: row["owners_area"],
    arrival_date: row["arrival_date"],
    explain: row["explain"],
    category_id: row["category_id"],
    user_id: row["user_id"],
    buyer_id: row["buyer_id"],
    item_image_id: row["item_image_id"]
  )
end

CSV.foreach("db/seeds/item_image.csv", headers: true) do |row|
  ItemImage.create!(
    image_url: row["image_url"],
    item_id: row["item_id"]
  )
end








# categoriesテーブル
  # Category.create!(
  #   name: "PCパーツ"
  # )
  # Category.create!(
  #   name: "子供服"
  # )


# # item_imagesテーブル
#   ItemImage.create!(
#     image_url: "https://images-na.ssl-images-amazon.com/images/I/31EskQ9W9iL._AC_SY400_.jpg",
#     item_id: "2"
#   )
#   ItemImage.create!(
#     image_url: "https://item-shopping.c.yimg.jp/i/n/lifestyle-007_70738",
#     item_id: "2"
#   )
#   ItemImage.create!(
#     image_url: "https://www.momofukugyu.jp/choice/yakiniku/img/kv_img01.jpg",
#     item_id: "1"
#   )
#   ItemImage.create!(
#     image_url: "https://m.media-amazon.com/images/G/01/mobile-apps/dex/firetv/catthumb_firetv_cube._CB1570429193_.png",
#     item_id: "2"
#   )


# # usersテーブル
# User.create!(
#   email: "t@p.com",
#   nickname: "Tamura1",
#   password: "a21se234"
# )



# # itemsテーブル
#   Item.create!(
#     name: "お肉",
#     price: "1000",
#     status: "中古",
#     brand: "",
#     shipping_fee: "",
#     shipping_method: "",
#     owners_area: "",
#     arrival_date: "",
#     explain: "",
#     category_id: "2",
#     user_id: "1",
#     buyer_id: "",
#     item_image_id: "1"
#   )
#   Item.create!(
#     name: "FireTV",
#     price: "4000",
#     status: "中古",
#     brand: "Amazon",
#     shipping_fee: "出品者負担",
#     shipping_method: "メルカリ便",
#     owners_area: "東京",
#     arrival_date: "1～2日で発送",
#     explain: "ここにい説明を書きます。ここにい説明を書きます。ここにい説明を書きます。ここにい説明を書きます。",
#     category_id: "1",
#     user_id: "1",
#     buyer_id: "2",
#     item_image_id: "2"
#   )





