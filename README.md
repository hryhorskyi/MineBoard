# Minesweeper Board Generator

Minesweeper Board Generator is a web application that allows users to generate and manage Minesweeper boards. Users can create custom Minesweeper boards by specifying the name of the board, their email, the width and height of the board, and the number of mines. The application will generate the board for them to play.

## Features

- Generate Minesweeper boards with custom dimensions and mine counts.
- Edit and update existing boards.
- Delete boards that are no longer needed.
- View a list of all generated Minesweeper boards.
- View the 10 most recent boards on the home page.
- Search for boards by name.
- Paginate the list of boards with 10 boards per page.

## Technologies Used

- Ruby 3.2.2
- Ruby on Rails 7.0.8
- Rspec for testing
- Bootstrap for styling
- PostgreSQL for the database

## Getting Started

Follow these instructions to set up and run the Minesweeper Board Generator locally:

```bash
   git clone https://github.com/yourusername/minesweeper-board-generator.git

   cd minesweeper-board-generator

   bundle install

   rails db:prepare

   rails server
```

Open your web browser and visit http://localhost:3000 to access the application.
