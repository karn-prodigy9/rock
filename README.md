# README

This **ROCK** project is created with rails and inertia.js to demonstrate how to invent the SPA without building an API.

You will not afraid to create a SPA anymore, if it doesn't require building an API or handling authentication with an access token.

## Features

- Authentication

    Using a built-in authentication generation with slight customizations of responses to support Inertia.


    See more about [built-in authentication](https://github.com/rails/rails/tree/main/railties/lib/rails/generators/rails/authentication)

- Error Pages Customization

    There are many approaches to customize the error pages in Rails. For this project, we use simple one to customize the error pages by overriding the `exceptions_app` and create a new errors controller for handling `404` and `505`.
