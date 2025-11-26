# EVERY TIME YOU CREATE A NEW PROJECT, SCREENSHOT THE PROJECT CARD IN CASE YOUR DATABASE ON HEROKU GETS ACCIDENTALLY WIPED.
# OR JUST CREATE NEW PROJECTS IN THE `SEED.RB`` FILE.

puts "Cleaning the Database..."

User.destroy_all
Project.destroy_all

puts "Database cleaned!"

# For security, edit the user password in the app after seeding (live & local environments).
puts "Reminder: edit the user password in the app after seeding (live & local environments)."

# User
# ThJykyf5Lvuv2#wkUqVtXtuLl73z2AQ9D28cPbuJ7IuuBAzEL$4^
puts "Creating user..."
users = []

user_1 = User.create!(
  email: "firesun.wuc5g@slmails.com",
  password: "jqJykyf5Lvuv2#wkUqVtXtuLl73z2AQ9"
)
users << user_1

puts "#{users.count} user created!"

# Personal Projects
puts "Creating personal projects..."
projects = []
personal_projects = []

sipfolio = Project.create!(
  title: "Sipfolio",
  description: "A social cocktail app where users discover, create, and share AI-enhanced recipes, with gamified rewards to drive engagement.",
  img_url: "sipfolio-cocktail-screenshot",
  tech_stack: "Ruby-on-Rails . Bootstrap . StimulusJS . PostgreSQL . Active Record",
  project_url: "https://www.sipfolio.rocks/",
  github_url: "https://github.com/chifury/rails-mister-cocktail",
  personal_project: true,
  user: user_1
)
projects << sipfolio
personal_projects << sipfolio

market_sensei = Project.create!(
  title: "Market Sensei",
  description: "A crypto trading platform that integrates AI-driven education and intuitive tools to make trading simpler and more accessible.",
  img_url: "market-sensei-dashboard-screenshot",
  tech_stack: "Ruby-on-Rails . Bootstrap . StimulusJS . PostgreSQL . Active Record . OpenAI",
  project_url: "https://www.marketsensei.app/",
  github_url: "https://github.com/chifury/market-sensei",
  personal_project: true,
  user: user_1
)
projects << market_sensei
personal_projects << market_sensei

dokodemo_fit = Project.create!(
  title: "Dokedemo Fit",
  description: "An AI-powered app creating personalized exercise routines based on home equipment, with multiple plans for any occasion.",
  img_url: "dokodemo-fit-routines-screenshot",
  tech_stack: "Ruby-on-Rails . Bootstrap . StimulusJS . PostgreSQL . Active Record . OpenAI",
  project_url: "https://dokodemo-fit-66811301c708.herokuapp.com/",
  github_url: "https://github.com/chifury/DokodemoFit",
  personal_project: true,
  user: user_1
)
projects << dokodemo_fit
personal_projects << dokodemo_fit

puts "#{personal_projects.count} personal projects created!"

# Projects with open source contributions.
puts "Creating projects with open source contributions..."
open_source = []

find_a_doc = Project.create!(
  title: "Find a Doc Japan ",
  description: "An app that connects expats living in Japan with the right doctors.",
  img_url: "findadoc-map-screenshot",
  tech_stack: "Vue.js . JavaScript . Vitest",
  project_url: "https://www.findadoc.jp/",
  github_url: "https://github.com/ourjapanlife",
  personal_project: false,
  user: user_1
)
projects << find_a_doc
open_source << find_a_doc

puts "#{open_source.count} project(s) with open source contributions created! "

puts "#{projects.count} total projects created!"
