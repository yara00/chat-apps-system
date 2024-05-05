### Chat Apps System

#### Technologies Used
- **Rails 7.1**
- **Ruby 3.1.1**.
- **MySQL**
- **Redis**
- **Elasticsearch**
- **Sidekiq**
- **Docker**



#### About
This is an API-only Chat Apps System. The system allows creating new applications, each defined by a unique token. Each application has many chats and each chat has many messages. 
Searching messages is done using Elastic Search. 
Background jobs have been utilized to handle the creation of chats/messages and updating counter values.
This app is containerized, so you can run 'docker-compose up' and you're free to go.
A postman collection is uploaded to the repo including the RESTful endpoints provided.

#### How to Run

**Using Docker**
1. Install Docker on your machine.
2. Clone the repository: `git clone <repository_url>`
3. Navigate to the project directory: `cd chat-apps-system`
4. Build Docker image: `docker-compose build`
5. Start the app containers: `docker-compose up`
6. Now, you have access to the app in your web browser at `http://localhost:3000`

**On Localhost**
1. Ensure Ruby (>= 3.1.1) and MySQL are installed on your machine.
2. Clone the repository: `git clone <repository_url>`
3. Navigate to the project directory: `cd chat-apps-system`
4. Install dependencies: `bundle install`
5. Set up the database: `rails db:create && rails db:migrate`
6. Start the Rails server: `rails s`
6. Now, you have access to the app in your web browser at `http://localhost:3000`
