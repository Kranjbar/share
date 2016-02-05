###Great job, team!

I'm really impressed by your teamwork skills, your incredible work ethic, and of course by the final product!

**Technical Requirements:** This project met all of the technical requirements. Further refinements could include optimizing the site for mobile by using media queries that would allow the site to shine on smaller screens too!

**Creativity:** Awesome idea and execution of the idea. It looks good and works well. Consider adding more information about the site and how to use it to the splash and/or About pages in order to instruct users on what the site is and how to use it.

**Code Quality:** More commenting, please! 

I caught a few instances where indentation was a little off, and while it doesn't break anything it can make the code harder to read. Overall, though, your code was clean and easy to follow!
 
Think about calls to the database from the controller that could be moved into the model. 

If you explore a path that doesn't end up panning out, such as the ratings gem, make sure that all references to it are removed from the code that you deploy.  

**Problem Solving:** Nice use of your join table to effectively access all the necessary data. Your problem solving was great, and I appreciate that you took all of your "client's" input to heart! 

**Some to-dos:**

1. Consider moving more of the database-calling logic from the controllers into the models, per Nathan's POODR talk.
2. Clean up your CSS files so that you DRY it up and take advantage of specificity and inheritance to write fewer lines of code. Consider tools like [CSS Lint](http://csslint.net/), which can show you areas to improve. 
3. Add the public/assets folder into the .gitignore file. If you never run `rake assets:precompile` it won’t matter, and you usually don't run it in development. Many developers ignore the folder because they precompile prior to deployment, but this step is not required for deploying to Heroku.
4. Fix the drop-down menu styling.
5. If you end up not using methods, such as is_authorized? in the User model (see my notes in that file), make sure you take them out of your deployed code.
6. Same goes for the remnants of the ratings experiments that ended up in the schema file. Run migrations that will allow you to drop those tables from the file. 
7. Ditto for CSS styles, classes/IDs in your HTML, and anything else that ended up not being used in the final product.
8. Consider using Ffaker data for your seed file instead of actual user info. You could run loops to set up many users at a time, each pre-seeded with a random bio, email address, set of skills, etc., for instance.
9. Think big! What's next for Sharetastic? Consider: emailing users automatically when someone leaves a review on their profile. The ability to flag inappropriate reviews. An administrator user-type to manage the community. The ability to add new skills. Etc! 

**Hint:** Find these to-dos in the Sharetastic code by running `git grep TODO` or `rake notes:todo`. 