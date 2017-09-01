# README

Potter Overview
================

This application is part of the Code Sample that students provide as part of the Code2040 Fellows Application. Once you pass you will share your work with other students who have passed the test as well as with our partner companies with whom you might interview.

What we're looking for
---------------
The point of the code sample is to give you a fun little data set and then have you find something interesting to do with it. Once you've written your code, you'll share it with other students for feedback & collaboration and with company partners so they can see all the creative, technical things Code2040 students can do!

Getting Started
---------------
The starter app is a very small Ruby on Rails app that makes a little quiz based on Harry Potter data. We're sorry that this year we only offer the app in Ruby--next year we'll offer the app in a variety of languages--but this year you're stuck with Ruby (which is actually a pretty great language).

The starter app doesn't need a database so don't worry about setting one up. All the data is in the JSON files in the `/data` directory.

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

Getting Access to the Collaborative Repository
----------
- Copy your secret from step 1 of the Fellows application (fellows.code2040.org) and paste it into secret.json (`data/secret.json`).

- The 'Spell' sections of the starter app are only partially working. The quiz is displaying 'write this method' in many places.

- In order to make it fully functional you will need to go into the spell.rb file (`app/models/spell.rb`) and write four methods (see details below). These are four short methods (1-5 lines each) that are each a little bit of basic array and string manipulation. Think of these as warm ups. They are not the most important part of this challenge, so don't hesitate to reach out with questions if you get stuck. We're here to help and we're rooting for you!

- As you write each of these four methods you will see long strings appear on the 'Spellchecker' tab. If your test suite for a spell is passing, paste the string into your fellowship application to validate it. Once all four are validated you'll receieve an invitation to the collaboration repository.

- Finally, please make sure to follow the additional instructions on the Fellows application (https://fellows.code2040.org) to share your code in the collaboration repository.

Detailed Information On Each Spell
-----------------------------------

- Reverse: The first one is straightforward. You’re going to reverse the name of a spell. That is, if the spell's name is “protego”, you’re going to return “ogetorp”. You'll find the method you need to write in the file 'spell.rb'. To run the automated tests for this spell use `bundle exec rspec -t reverse .`

_Hint: There’s more than one way to skin a cat. However you reverse the string, all that matters is that it’s flipped around accurately. That said, you can do this work with very little code. There’s no shame in doing it the one-line way--if you can figure out how._

- Counter: The next one is a counter exercise where you're going to count how many times a spell was said. This is a little array exercise. You'll find the method you need to write in the file 'spell.rb'. To run the automated tests for this spell use `bundle exec rspec -t counter .`

- Letter: The next exercise asks you to find the names of all spells that start with the same letter as a given spell. For this one you'll need to combine a little array work and a little string work. You'll find the method you need to write in the file 'spell.rb'. To run the automated tests for this spell use `bundle exec rspec -t letter .`

_Hint: You’ll need a little string-fu to complete this challenge. But rest assured: comparing the beginnings of strings is a common task. Standard libraries might even have some code to help you do this._

- Lookup: In this last exercise you'll be given a mention (a time a spell was said in the books) and be asked to lookup the spell itself. You can do this by matching the spell to the mention using the name of the spell. You'll find the method you need to write in the file 'spell.rb'. To run the automated tests for this spell use `bundle exec rspec -t lookup .`

A Few More Tips
----------------

- Outside reference materials are encouraged—they’re a normal part of development. Don’t be shy to use Google.

- The Ruby docs for <a href="https://ruby-doc.org/core-2.4.1/String.html" target="_blank">String</a> and <a href="https://ruby-doc.org/core-2.4.1/Array.html" target="_blank">Array</a> are your friends!

- <a href="https://medium.com/@chrisrodz35/a-guide-to-picking-up-new-programming-skills-2f1ff142d17f" target="_blank">Here’s a great post on teaching yourself</a>, by 2014 Fellow Christian Rodriguez, to pump up your confidence.

- As you work you should continue to run the test suite (`bundle exec rspec .`) until it is all passing.

- Commit your work as you go in logically organized commits with brief, descriptive commit messages. You'll be sharing these on GitHub!

Data
---------------
The challenge uses a data set from Tableau. You can find the raw data in the `/data` directory. The dataset we chose is lighthearted and hopefully fun to explore. It's the spells of Harry Potter and all the times a spell was said in the books. You can see a visualization of the data on the home page. Play around with it to get a sense for what's in the data and to come up with some fun ideas for what to do.
