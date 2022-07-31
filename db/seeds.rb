require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

(1..5).each do
    User.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email
    )
end

Servico.create([
    { 
        nome_servico: "Adestramento",
        valor_servico: 45.50
    },
    { 
        nome_servico: "Day Care",
        valor_servico: 20.00
    },
    { 
        nome_servico: "Hospedagem",
        valor_servico: 40.00
    },
    { 
        nome_servico: "Passeio",
        valor_servico: 15.00
    },
    { 
        nome_servico: "Pet Sitter",
        valor_servico: 25.00
    }
])