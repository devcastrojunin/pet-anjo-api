FactoryBot.define do
    factory :servico do
        nome_servico {Faker::Job.field}
        valor_servico {Faker::Number.decimal(l_digits: 2, r_digits: 2) }
    end
end