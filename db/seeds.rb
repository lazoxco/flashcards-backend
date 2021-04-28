# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ruby = Topic.create(name: "Ruby")
html = Topic.create(name: "HTML")
css = Topic.create(name: "CSS")

flashcard1 = Flashcard.create(question: "What is Ruby?", answer: "Ruby is an interpreted, high-level, general-purpose programming language.", topic_id: ruby.id)

flashcard2 = Flashcard.create(question: "What is HTML?", answer: "A standard markup language for documents designed to be displayed in a web browser.", topic_id: html.id)

flashcard3 = Flashcard.create(question: "What is CSS?", answer: "A style sheet language used for describing the presentation of a document written in a markup language such as HTML. ", topic_id: css.id)