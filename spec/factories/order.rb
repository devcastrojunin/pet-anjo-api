FactoryBot.define do
    factory :order do
        nome_pet {Faker::Creature::Dog.name}
        data_inicio_servico {Faker::Date.in_date_period}
        data_final_servico {Faker::Date.in_date_period}
        total_unidade_servico {Faker::Number.between(from: 1, to: 10) }
        user
        servico
    end
end
  