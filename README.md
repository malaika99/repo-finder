# GitHub Repository Search Web App

Overview

This is a simple web application that allows users to search for public repositories on GitHub based on a search term. It provides a straightforward user interface and fetches and displays GitHub repository data.

Features
* Search: Input a search term to find GitHub repositories.

* Results: Display repository names, descriptions, and links.

Installation
* Clone the repository:
  git clone https://github.com/malaika99/repo-finder.git

* Navigate to the project directory
  cd repo-finder

* Install dependencies
  bundle install

* Set up Github Personal Access Token
  * Create a Personal Access Token in your GitHub account settings. You can do this by going to GitHub > Settings > Developer settings > Personal access tokens.
  * Provide the necessary scopes and permissions to the token based on your application's requirements (typically, at least "repo" and "user").
  * Create an .env file in your project and set your Personal Access Token as an environment variable like this:
  GITHUB_ACCESS_TOKEN=your_personal_access_token

* Run the app:
  rails server

* Access it in your browser at http://localhost:3000.

Usage

* Enter a search term and click "Search."
* Results will be displayed on the page.

Technologies

* Ruby on Rails
* HTTParty gem for GitHub API
* Kaminari gem for pagination
* HTML and CSS for the interface
