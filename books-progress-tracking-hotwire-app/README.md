# RoR - Books Progress Tracking App using Hotwire

This is a sample project to play around with Hotwire Turbo (Frames/Streams/Stimulus), introduced with Rails 7.

```sh
# command to create the application, including bootstrap but getting rid of mailer stuff
rails new books-progress-tracking-hotwire-app -j esbuild --css bootstrap --skip-action-mailer --skip-action-mailbox
```


## Setup

The project is configured to use SQLite, so running the following commands will generate the `.sqlite` database, execute migrations to generate the schema and populate the database tables with some dummy values.

```sh
rails db:migrate
rails db:seed
```

Start the project with following command and access it through `http://localhost:3000`.

```sh
rails s
```

## Resources

- [https://turbo.hotwired.dev/handbook/introduction](https://turbo.hotwired.dev/handbook/introduction)
- [Youtube | Deanin - Turbo Frame Pages in Ruby on Rails 7](https://www.youtube.com/watch?v=iwZDoz_Ya2k)
- [Youtube | Mix & Go - Turbo Frames vs. Turbo Streams](https://www.youtube.com/watch?v=vnDWsGtzOCc)
- [Youtube | Rapid Ruby - Hotwire Modals with ZERO JAVASCRIPT](https://www.youtube.com/watch?v=WK16FeBfbxI)
- [Dev.to | Dale Zak - Bootstrap Modals Using Hotwire In Rails](https://dev.to/dalezak/bootstrap-modals-using-hotwire-in-rails-3pkh)
