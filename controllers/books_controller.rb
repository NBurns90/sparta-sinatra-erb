class BooksController < Sinatra::Base

# Sets routes of the partents directory of the current file
set :root, File.join(File.dirname(__FILE__), '..')

# Sets the view directory correctly
set :view, Proc.new { File.join(root, "views") }

# Enable Reloader
configure :development do
  register Sinatra::Reloader
end

$books = [
  {
  id:0,
  title: "1984",
  author: "George Orwell",
  body: "Winston Smith works for the Ministry of Truth in what remains of a Britain ravaged by revolution. His every move is monitored by the Thought Police, who are responsible for detecting dissent against the Party and its leader, Big Brother—and eliminating it. When he meets Julia, Winston thinks he might have found love, and a fellow loather of the Party. But when the pair are arrested and sent to the sinister Room 101 for re-education, their bond—and commitment to their shared cause—will be tested to its limits.

  George Orwell’s dystopian vision of a world enslaved by doublethink and thoughtcrime is as terrifying now as it was on its initial publication in 1949. One of the great classics of the twentieth century, 1984 is a startlingly original and arresting novel about tyranny and the universal struggle of the individual against the malevolent tendencies of the modern state.",
  authorid: 0
  },
  {
  id:1,
  title: "12 Rules of Life",
  author: "Jordan Peterson",
  body: "Acclaimed clinical psychologist Jordan Peterson has influenced the modern understanding of personality, and now he has become one of the world's most popular public thinkers, with his lectures on topics from the Bible to romantic relationships to mythology drawing tens of millions of viewers. In an era of unprecedented change and polarizing politics, his frank and refreshing message about the value of individual responsibility and ancient wisdom has resonated around the world.

  In this book, he provides twelve profound and practical principles for how to live a meaningful life, from setting your house in order before criticising others to comparing yourself to who you were yesterday, not someone else today. Happiness is a pointless goal, he shows us. Instead we must search for meaning, not for its own sake, but as a defence against the suffering that is intrinsic to our existence.

  Drawing on vivid examples from his clinical practice and personal life, cutting edge psychology and philosophy, and lessons from humanity's oldest myths and stories, Peterson takes the reader on an intellectual journey like no other. Gripping, thought-provoking and deeply rewarding, 12 Rules for Life offers an antidote to the chaos in our lives: eternal truths applied to our modern problems.",
  authorid: 1
  },
  {
  id:2,
  title: "Beyond Good and Evil",
  author: "Fredrich Nietzsche",
  body: "In Beyond Good and Evil, Nietzsche accuses past philosophers of lacking critical sense and blindly accepting dogmatic premises in their consideration of morality. Specifically, he accuses them of founding grand metaphysical systems upon the faith that the good man is the opposite of the evil man, rather than just a different expression of the same basic impulses that find more direct expression in the evil man. The work moves into the realm beyond good and evil in the sense of leaving behind the traditional morality which Nietzsche subjects to a destructive critique in favour of what he regards as an affirmative approach that fearlessly confronts the perspectival nature of knowledge and the perilous condition of the modern individual.",
  authorid: 2
  },
  {
  id:3,
  title: "The Gulag Archipelago",
  author: "Alexander Solzhenitsyn",
  body: "The Gulag Archipelago (Russian: Архипела́г ГУЛА́Г, Arkhipelág GULÁG) is a book by historian Aleksandr Solzhenitsyn about the Soviet forced labor camp system. The three-volume book is a narrative relying on eyewitness testimony and primary research material, as well as the author's own experiences as a prisoner in a gulag labor camp. Written between 1958 and 1968, it was published in the West in 1973 and, thereafter, it was circulated in samizdat (underground publication) form in the Soviet Union until its appearance in the Russian literary journal, Novy Mir, in 1989, in which a third of the work was published in three issues.",
  authorid: 3
  },
  {
  id:4,
  title: "Fingerprints of The Gods",
  author: "Graham Hancock",
  body:"Fingerprints of the Gods: The Evidence of Earth's Lost Civilization is a 1995 book by Graham Hancock, in which the author echoes 19th-century writer Ignatius Donnelly, author of Atlantis: The Antediluvian World (1882), in contending that some enigmatic, ancient but highly advanced civilisation had existed in prehistory, one which served as the common progenitor civilisation to all subsequent known ancient historical ones. The author proposes that sometime around the end of the last Ice Age this civilisation ended in cataclysm, but passed on to its inheritors profound knowledge of such things as astronomy, architecture, and mathematics.

  Hancock's theory is based on the idea that mainstream interpretations of archaeological evidence are flawed or incomplete.",
  authorid: 4
  }
]

$authors = [
  {
  id:0,
  name: "George Orwell",
  anotherBook: "Animal Farm"
  },
  {
  id:1,
  name: "Jordan Peterson",
  anotherBook: "Maps of Meaning"
  },
  {
  id:2,
  name: "Fredrich Nietzsche",
  anotherBook: "The Antichrist"
  },
  {
  id:3,
  name: "Alexander Solzhenitsyn",
  anotherBook: "In the First Circle"
  },
  {
  id:4,
  name: "Graham Hancock",
  anotherBook: "Magicians of The Gods"
  }
]

  # Landing Page
  get '/' do
    '<h1>This is the blank Landing Page</h1>'
  end

  # Index Page
  get '/books' do
    @title = "Books Index Page"
    @books = $books

    erb :'books/index'
  end

# New Posts Page
  get '/books/new' do
    @title = "New Book Page"

    erb :'books/new'
  end

# Books Show Page
  get '/books/:id' do
    id = params[:id].to_i

    @title = "Book Title"
    @books = $books[id]

    erb :'books/show'
  end

 # Show Author
  get '/authors/:id' do
    id = params[:id].to_i

    @title = "Page about the author"
    @authors = $authors[id]

    erb :'authors/show'
  end

 # CREATE
  post '/books' do
    "Create"
  end

 # UPDATE
  put '/books' do
    "Update"
  end

 # DELETE
  delete '/books/:id' do
    "Delete"
  end

# Edit Page
  get '/books/:id/edit' do
    id = params[:id].to_i

    @title = "Book Edit Page"

    @books = $books[id]

    erb :'books/edit'
  end

end
