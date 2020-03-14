# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
me = Caregiver.create(
    first_name: 'Patrick',
    last_name: 'Candlin',
    email: 'patrick.candlin@gmail.com',
    password: 'test123'
)

albert = Child.create(
    name: "Albert",
    birthday: Date.new(2017,10,13),
    secret: 'Bam-bam',
)

id = albert.id
type = ['1', '2']           
notes = ['a note aobut this potty', nil ]
on_potty = [true, false ]
current_time = DateTime.now

for index in 0..200
    Potty.create(
        child_id: id, 
        excreation_type: type.sample, 
        on_potty: on_potty.sample,
        time: current_time - index.hours,
        notes: notes.sample
    )
end