# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Product.create!(
    name: 'Gwalior Dosa',
    description:
    %{
        Dosa with loaded butter, the taste of south!
    },
    image: 'gwalior.png',
    price: 12.49)
Product.create!(
    name: 'Masala Dosa',
    description:
    %{
        Dosa with loaded aloo stuffing, served with tasty spicy sambhar and coconut chutney!
    },
    image: 'masala.png',
    price: 11.00)
Product.create!(
    name: 'Mysore Dosa',
    description:
    %{
        Dosa with loaded spicy chutney and aloo stuffing, serverd with sambhar and coconut chutney, the taste of south!
    },
    image: 'mysore.png',
    price: 11.49)
Product.create!(
    name: 'Rava Dosa',
    description:
    %{
        Dosa made with rava batter and server with freshly chopped onions and sambhar-coconut chutney!
    },
    image: 'rava.png',
    price: 11.10)
