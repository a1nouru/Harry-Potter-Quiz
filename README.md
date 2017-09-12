# README

Potter Overview
================

This application is part of the Code Sample that students provide as part of the Code2040 Fellows Application. Once you pass you will share your work with other students who have passed the test as well as with our partner companies with whom you might interview.

What we're looking for
---------------
The point of the code sample is to give you a fun little data set and then have you find something interesting to do with it. Once you've written your code, you'll share it with other students for feedback & collaboration and with company partners so they can see all the creative, technical things Code2040 students can do!

Getting Started
---------------
This app is a very small Ruby on Rails app that makes a little quiz based on Harry Potter data. We're sorry that this year we only offer the app in Ruby--next year we'll offer a variety of languages--but this year you're stuck with Ruby (actually a pretty great language).

This app doesn't need a database so don't worry about setting one up. All the data is in the JSON files in the `/data` directory.

This is what you need to do to get started:

- Install Ruby 2.4.1 <a href="https://www.ruby-lang.org/en/downloads/"  target="_blank">You can download it here</a>
- Install bundler (`gem install bundler`)
- Intall the bundle (`bundle install`)
- Run the Rails server (`rails s`)
- Open your browser and visit the app (http://localhost:3000)

Next Steps
----------
- The first link you'll see in the top nav is the 'Freestyle' link. This is the most important part of the code sample and where we want you to do something creative with the data set. Spend the most time here.

- We've given you some boilerplate code to work with for the freestyle section (a couple routes, a controller, and a view), but feel free to throw away our boilerplate if you want. (It doesn't need to be in a quiz format either.) We just want to see you play around with the data and strut your stuff. We can't wait to see what you come up with!

- Consider something fun and interesting you could do with the data provided. For example, you could find the words that most commonly come before a spell. Or you could come up with a multiple choice quiz that asks which spell is closest (by word position) to another spell in the books.

- Write some code to show how you would do it. Company partners will be able to see your code sample and interact with your app. We imagine this will be one of the first tabs they will click on so impress them!

Copying in your work from the last section
----------
- Copy your secret from step 1 of the Fellows application (fellows.code2040.org) and paste it into secret.json (`data/secret.json`).

- The 'Spell' sections of the this app are only partially working. The quiz is displaying 'write this method' in many places.

- Copy in the spell.rb file (with the four methods you wrote) in the last section into the spell.rb file in this repository (`app/models/spell.rb`) to make it fully functional.

- Finally, please make sure to follow the additional instructions on the Fellows application (https://fellows.code2040.org) to share your code in the collaboration repository.

A Few Tips
----------------

- Outside reference materials are encouraged—they’re a normal part of development. Don’t be shy to use Google.

- The Ruby docs for <a href="https://ruby-doc.org/core-2.4.1/String.html" target="_blank">String</a> and <a href="https://ruby-doc.org/core-2.4.1/Array.html" target="_blank">Array</a> are your friends!

- <a href="https://medium.com/@chrisrodz35/a-guide-to-picking-up-new-programming-skills-2f1ff142d17f" target="_blank">Here’s a great post on teaching yourself</a>, by 2014 Fellow Christian Rodriguez, to pump up your confidence.

- As you work you should continue to run the test suite (`bundle exec rspec .`) until it is all passing.

- Always use the class methods Spell.data and Mention.data to load the JSON. If you load the JSON a different way within your methods, the tests may not pass.

- Commit your work as you go in logically organized commits with brief, descriptive commit messages. You'll be sharing these on GitHub!

A Few More Tips From Other Students
----------------
- Check out the Code Academy, [Rails Learning Track](https://www.codecademy.com/learn/learn-rails)

- Another good Rails resource is Michael Hartl, [Ruby on Rails Tutorial](https://www.railstutorial.org/book)

- A good post on [getting setup](https://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/) on Mac

- If you have trouble getting the app setup on your computer, consider a cloud environment like [Cloud9](https://c9.io/). One student reported it cut the setup time from hours to five minutes.

Data
---------------
The challenge uses a data set from Tableau. You can find the raw data in the `/data` directory. The dataset we chose is lighthearted and hopefully fun to explore. It's the spells of Harry Potter and all the times a spell was said in the books. You can see a visualization of the data on the home page. Play around with it to get a sense for what's in the data and to come up with some fun ideas for what to do.
