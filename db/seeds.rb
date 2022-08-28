# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

puts "Cleaning database..."
Post.destroy_all
# User.destroy_all
Information.destroy_all

# puts "Creating users..."
# admin = User.create(email: "admin@email.ch", password: "123456")
# puts "Created #{admin.email}"
# user = User.create(email: "user@email.ch", password: "123456")
# puts "Created #{user.email}"

puts "Creating posts..."
post_1 = {title: "LES MEILLEURES CRÊPES IG BAS SUR TERRE – LÉGÈRES, MOELLEUSES & FINES", content: "Un titre très humble, n’est-ce pas ? En même temps, je suis l’héritière de la reine des crêpes (ma mère) et donc mis la barre très haute. Très légères, moelleuses et fines, c’est comme ça que je les aime. Je ne les aime pas épaisses, ni croustillantes, ni cartonneuses. Et je vais vous donner mes astuces pour les réussir car il ne suffit pas d’une simple recette énoncée.", url: "https://megalowfood.com/les-meilleures-crepes-ig-bas-sur-terre-legeres-moelleuses-fines/", user: User.where(admin: true).first }
post_2 = {title: "TARTE SALÉE DU PETIT DÉJEUNER ALIAS « BREAKFAST GALETTE » – IG BAS", content: "Tous les éléments gourmands du matin réunis dans cette petite tarte nutritive et express : des oeufs, des champignons, du fromage et du bacon. La pâte à tarte facile à réaliser constitue un apport en glucides complexes.", url: "https://megalowfood.com/tarte-salee-du-petit-dejeuner-alias-breakfast-galette-ig-bas/", user: User.where(admin: true).first }

[post_1, post_2].each do |attributes|
  post = Post.create!(attributes)
  puts "Created #{post.title}"
end

puts "Creating informations..."
information_1 = {page: "Contact", name: "Horaires", content: "Je travaille actuellement les lundis, jeudis et vendredis de 8h15 à 17h30.", user: User.where(admin: true).first}
information_2 =  {page: "Contact", name: "Disponibilités", content: "Dans l’immédiat (actualisé en août 2022) je n’ai pas de disponibilité pour de nouveaux suivis, mais il est toujours possible de me faire une demande par mail et que je vous contacte lorsqu’une place se libère.", user: User.where(admin: true).first}
information_3 = {page: "Actualités", name: "Paragraphe 1", content: "A partir du premier juillet 2022, le modèle de la prescription est entré en vigueur, qui permet au suivi d’être remboursé par l’assurance de base sur prescription d’un médecin généraliste, psychiatre ou pédiatre.", user: User.where(admin: true).first}
information_4 = {page: "Actualités", name: "Paragraphe 2", content: "A priori cela ne devrait pas engendrer de changement pour les personnes qui passent par leur assurance complémentaire et souhaitent continuer de le faire.", user: User.where(admin: true).first}

[information_1, information_2, information_3, information_4].each do |attributes|
  information = Information.create!(attributes)
  puts "Created #{information.name}"
end

puts "Finished!"
