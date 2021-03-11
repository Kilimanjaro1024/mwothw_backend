## Wireframes

Upload images of wireframe to cloudinary and add the link here with a description of the specific wireframe. Also, define the the React components and the architectural design of your app.

- [Mobile](https://www.figma.com/file/ao0liMofrTc91wjljADoOB/My-Way-or-the-Highway?node-id=0%3A1)
- [React Architecture](https://media.discordapp.net/attachments/771150639732359212/819617502417911808/JPEG_20210311_110717.jpg?width=377&height=670)

### Project Description

My Way or the Highway is a blog site where users can create posts about any activity they choose and describe how they do it and why it is better, more efficient, or what have you. This site is a platform for people to explain how they choose to execute their endeavors in depth. The purpose of this site is so that users can exchange ideas and thought processes with one another.


### User Stories

- A user can create an account.
- A user can login.
- A user can see posts from other users.
- A user can create a new post.
- A user can like a post.
- A user can search for posts by topic and tag.
- A user can search for posts from a specific account.
- A user can comment on post.
  

### Modles

- User
    - Username      String
    - Password      String
    - email         String
    - Posts         Array of posts
    - Liked posts   Array of Posts
    - Profile Pic   Image
    - Num of Posts  Integer

- Post
    - Title         String
    - Topic         String
    - Content       String
    - Tags          Array of Strings
    - Likes         Integer
    - Comments      Array of Comments

- Comment
    - Username      String
    - Content       String
    - likes         Integer
    - Replies       Array of Comments

#### MVP
- Login
- Create New Account 
- Make a post
- Like a post
- View most recent posts
- Seatch for posts:
    - By topic
    - By tag
    - By user
- Profile Page:
    - See my posts
    - See my liked posts
    - See my account info

#### PostMVP 

- Comment on a post
- Block user
- Activity graph
- Delete a post
- Update user information

## Components
##### Writing out your components and its descriptions isn't a required part of the proposal but can be helpful.

Based on the initial logic defined in the previous sections try and breakdown the logic further into stateless/stateful components. 

| Component | Description | 
| --- | :---: |  
| App | This will make the initial data pull and include React Router| 
| Header | This will render the header with a button to the profile page and a hamburger dropdown nav| 
| Login Page | Allow the user to Login to their account |
| Rgister Page | Allow the user to create a new account |
| Post Div | This will render a post|
| Create Post Form | This will render a form for a user to create a post |
| Homepage Page | This will render all of the most recent posts |
| Search Nav | This will render two buttons, one to search posts by topic and tag and one to search by the author of the posts |
| Profile Page (My posts) | This will render all of the users most recent posts |
| Profile Page (Liked posts) | This will render all of the users liked posts |
| Profile Page (Account) | This will render all of the users Account info |


Time frames are also key in the development cycle.  You have limited time to code all phases of the game.  Your estimates can then be used to evalute game possibilities based on time needed and the actual time you have before game must be submitted. It's always best to pad the time by a few hours so that you account for the unknown so add and additional hour or two to each component to play it safe. Also, put a gif at the top of your Readme before you pitch, and you'll get a panda prize.

## MVP

| Component | Priority | Estimated Time | Time Invetsted |
| --- | :---: |  :---: | :---: |
| Login/Register(backend) | H | 6.5hrs| 12hr |
| Login/Register(frontend) | H | 3hrs| 4hr |
| Homepage | H | 3hrs| 4hr |
| Post Form | H | 2hrs| 3hr |
| Header | H | 2hrs| 3hr |
| Post Div | M | 3hrs| 4hr | 
| Search Nav (frontend) | M | 1.5hrs| 2hr | 
| Search Nav (backend) | M | 3hrs| hr | 
| Profile page (My posts and Liked posts) | M | 4hrs| 2hr | 
| Profile page (Account Info) | L | 1.5hrs| 2hr | 
| Responsive Design | L | 3.5hrs| 4hr |
| Styling | H | 7hrs| 9hr |
| Total | H | 40hrs| 49*hrs | 

## Post MVP

| Component | Priority | Estimated Time | Time Invetsted | Actual Time |
| --- | :---: |  :---: | :---: | :---: |
| Comments | L | 5hrs| hr | hr |
| Block a User | H | 2.5hrs| hr | hr |
| Activity Graph | M | 2.5hrs| hr | hr |
| Delete a Post | M | 2.5hrs| hr | hr |
| Total | H | 12.5hrs| hrs | hrs |

## Additional Libraries
 - styled components
 - jwt
 - @hapi/joi
 - bcrypt
 - axios

## Code Snippet

this handleChange function for the registration feature was my first attempt at setting up a password confirmation system. while I feel I could address the conditional logic a bit better I was reasonably pleased with how intuitve it was to get this function up and running.

```
const handleChange = (event) => {
    console.log(event.target.name);
    if (event.target.name === "submited_password") {
      console.log("hi");
      submited_password = event.target.value;
      console.log(submited_password);
    }
    if (event.target.name === "confirm_password") {
      confirm_password = event.target.value;
      console.log(confirm_password);
    }
    if (submited_password === confirm_password) {
      setFormData({ ...formData, password: [submited_password] });
    }
    if (
      event.target.name !== "submited_password" &&
      event.target.name !== "confirm_password"
    ) {
      console.log("name");
      setFormData({
        ...formData,
        [event.target.name]: [event.target.value],
      });
    }
    
  };

```

## Issues and Resolutions

- Issue: I had trouble getting my transitions to animate with styled componenets.
    - Resolution: 
- Issue: While referenceing user info state the sate would be reset on any refresh the information would be lost and those references would error out
    - Resolution: 
- Issue: 
    - Resolution: 