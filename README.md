Required Features
View now playing movie data fetched from the The Movie DB (TMDB) API using URLSession
Create a TMDB account here and go to Settings -> API to register for an API key. Fill-out the fields to the best of your ability (some fields you can just put in something random). You will need the API key specified under the API Key (v3 auth) section once your API key request has been approved.
You should use https://api.themoviedb.org/3/movie/now_playing?api_key=YOUR_API_KEY_HERE to fetch the list of movies that are currently playing in theatres. You can find more information about this API endpoint here
 Use a UITabBarController to allow for multiple ways to view movies
This will allow you to add a new view controller and browse movies using a collection view (see next requirement)
 View movie posters using a UICollectionView
This should be in a new view controller that is contained within the tab bar controller you created above
Tapping on a movie poster will navigate to the book detail view, similar to the table view
Stretch Features
Allow users to view similar movies (or another end-point of your choosing)
Add a button inside the movie detail view so that the user can keep browsing similar movies (see GIF above)
Use the https://api.themoviedb.org/3/movie/MOVIE_ID/similar?api_key=YOUR_API_KEY_HERE endpoint to get a list of similar movies given a movie id
You should refactor and just reuse your existing table view to show similar movie results
