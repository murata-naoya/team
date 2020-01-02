# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
    email: "a@a",
    password: "aaaaaa",
    password_confirmation: "aaaaaa"
)

Enduser.create!(
    email: "aaa@gmail.com",
    password: 'aaaaaa',
    password_confirmation: "aaaaaa",
    last_name_characters: "佐藤",
    first_name_characters: "智子",
    last_name_kana: "サトウ",
    first_name_kana: "トモコ",
    postal_code: "000-0000",
    address: "東京都 豊島区",
    phone_number: "000-000-0000"
    # created_at: "2019-12-10 03:32:19",
    )

    Enduser.create!(
        email: "bbb@gmail.com",
        password: 'aaaaaa',
        password_confirmation: "aaaaaa",
        last_name_characters: "bbb",
        first_name_characters: "bbb",
        last_name_kana: "bbb",
        first_name_kana: "bbb",
        postal_code: "000-0000",
        address: "東京都 千代田区",
        phone_number: "000-000-0000"
        # created_at: "2019-12-10 03:32:19",
        )
    
    Product.create!(
        genre_id: 1,
        name: "ケーキ",
        image_id: "1",
        price: 100,
        description: "おいしいよ",
        sell_status: 0
        )
    
    Genre.create!(
        name: "洋菓子",
        created_at: "2019-06-09 05:58:56",
        updated_at: "2019-06-09 05:58:57"
        )