# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.

## Screenshots
### Homepage
![Homepage](/docs/home_page.png)
### Login Page
![Login](/docs/login_page.png)
### Evergreen
![Evergreen](/docs/Category_evergreen.png)
### Cart
![Cart](/docs/full_cart.png)
![Empty_Cart](/docs/empty_cart.png)
### Checkout Test
![Checkout](/docs/checkout_test.png)
### Order Details
![Order](/docs/order_details.png)
### Cypress Test
![Cypress](/docs/cypress_add_to_cart_test.png)


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
- Rspec 3.11
- Cypress 9.7.0