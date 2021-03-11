# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
	email: "admin@admin",
	password: "aaaaaa",
	password_confirmation: "aaaaaa"
)

Genre.create!(
	[
		{
			name: "ケーキ",
			valid_invalid_status: 0
		},

		{
			name: "焼き菓子",
			valid_invalid_status: 0
		},

		{
			name: "キャンディー",
			valid_invalid_status: 0
		},

		{
			name: "プリン",
			valid_invalid_status: 0
		},

		{
			name: "アイス",
			valid_invalid_status: 1
		},
	]
)

