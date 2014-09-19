## This is a work in progress.

This repository contains an example of how to mock Stripe server calls made from Javascript. Specifically, stripe.js.
StripeMock is really good for mocking calls in Ruby code, but can't intercept calls made from Javascript.

If you want to test Stripe without having to rely on internet connectivity, or access to the Stripe servers, and you're using javascript to get a token from the card details a user enters, you'll need to use something like this to mock it out. 

See 
* https://github.com/rebelidealist/stripe-ruby-mock
* This conversation... https://github.com/rebelidealist/stripe-ruby-mock/issues/52
* This article... http://robots.thoughtbot.com/using-capybara-to-test-javascript-that-makes-http
