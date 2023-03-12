require "open-uri"

Article.destroy_all

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
article = Article.new(title: "NES", body: "A great console")
article.photos.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
article.save

Article.create(title: 'How To Win Finite Games With An Infinite Mindset', body: 'Finite and infinite games: Were defined by professor James P. Carse in his book Finite and Infinite Games: A Vision of Life as Play and Possibility, and expanded upon by Simon Sinek in his book, The Infinite Game.')
Article.create(title: 'How to Turn Simon Sinek´s Golden Circle Into Coal, Or How to Wreck Yourself', body: 'This is the third article of the These Times Are Made for Misfits series. The first was How to Be a Misfit, and the second was Action Confidence. Please be aware of the following two articles, Developing Dual Awareness, and Illuminating the Blind Spot of Leadership.')
