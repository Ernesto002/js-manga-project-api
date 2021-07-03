# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

attack_on_titan = Collection.create(title: 'Attack on Titan', volume_count: '34', author: 'Hajime Isayama', description: 'Set in a world where humanity lives inside cities surrounded by three enormous walls that protect them from the gigantic man-eating humanoids referred to as Titans. The story follows Eren Yeager, who vows to exterminate the Titans after a Titan brings about the destruction of his hometown and the death of his mother.', release_year: '2012')
tokyo_ghoul = Collection.create(title: 'Tokyo Ghoul', volume_count: '14', author: 'Sui Ishida', description: 'Set in an alternate reality where ghouls, creatures that look like normal people but can only survive by eating human flesh, live among the human population in secrecy, hiding their true nature in order to evade pursuit from the authorities.', release_year: '2015')
demon_slayer = Collection.create(title: 'Demon Slayer', volume_count: '23', author: 'Koyoharu Gotouge', description: 'Following Tanjiro Kamado and his sister Nezuko Kamado as they seek a cure for Nezukos demon curse. Tanjiro and Nezuko become entangled in the affairs of a secret society, known as the Demon Slayer Corps, that has been waging a secret war against demons for centuries.', release_year: '2018')

Manga.create([
    # Attack on Titan
    {title: 'Attack on Titan', volume_number: '1', author: 'Hajime Isayama', description: 'For the past century, whats left of man has hidden in a giant, three-walled city. People believe their 50-meter-high walls will protect them from the Titans, but the sudden appearance of an immense Titan is about to change everything.', release_year: '2012', collection: attack_on_titan},
    {title: 'Attack on Titan', volume_number: '2', author: 'Hajime Isayama', description: 'The Colossal Titan has breached humanitys first line of defense, Wall Maria. Mikasa, the 104th Training Corps ace and Erens best friend, may be the only one capable of defeating them, but beneath her calm exterior lurks a dark past. When all looks lost, a new Titan appears and begins to slaughter its fellow Titans.', release_year: '2012', collection: attack_on_titan},
    # Tokyo Ghoul
    {title: 'Tokyo Ghoul', volume_number: '1', author: 'Sui Ishida', description: 'Ken Kaneki is an ordinary college student until a violent encounter turns him into the first half-human half-ghoul hybrid. Trapped between two worlds, he must survive Ghoul turf wars, learn more about Ghoul society and master his new powers.', release_year: '2015', collection: tokyo_ghoul},
    {title: 'Tokyo Ghoul', volume_number: '2', author: 'Sui Ishida', description: 'Unable to discard his humanity but equally unable to suppress his Ghoul hunger, Ken finds salvation in the kindness of friendly Ghouls who teach him how to pass as human and eat flesh humanely.', release_year: '2015', collection: tokyo_ghoul},
    # Demon Slayer
    {title: 'Demon Slayer', volume_number: '1', author: 'Koyoharu Gotouge', description: 'Kamado Tanjiro is a kindhearted boy who makes a living selling charcoal. But his peaceful life is shattered when a demon slaughters his entire family. His little sister Nezuko is the only survivor, but she has been transformed into a demon herself!', release_year: '2018', collection: demon_slayer},
    {title: 'Demon Slayer', volume_number: '2', author: 'Koyoharu Gotouge', description: 'Tanjiro sets out on the path of the Demon Slayer to save his sister and avenge his family!', release_year: '2018', collection: demon_slayer}
])