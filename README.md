#Nonprofit Donations
####Built in Epicodus coding bootcamp, week 9 - APIs

* *DONE* To start off with, create CRUD/L functionality for non-profits Don't worry about user auth or images yet; just make this really simple so we can get to the new stuff quickly.
* *DONE* Add user auth
* *DONE* Now, let users choose a non-profit to donate to. To do this, use the Stripe API. Read the documentation on how to build a form with Stripe, and then how to charge a card after the number has been submitted to Stripe in exchange for a token. When you're testing, make sure to use the magic testing numbers so you don't need to use a real credit card! Also, if you wish, feel free to use the Stripe gem rather than making HTTP requests manually. (Or be hardcore and make them manually! The choice is yours.) For the moment, don't worry about how the non-profit gets paid - we'll get to that.
* *DONE* Now, non-profits want the option to have their donors opt for monthly donations. Use Stripe subscriptions to bill their card for $15 per month if they choose monthly donations.
* *DONE* Not everyone wants to donate $15/month. Let non-profits create different donation tiers by adding subscriptions. Hint: A non-profit has many subscriptions.
* *DONE* Finally, we need to actually pay out to the non-profits. Use Stripe transfers to pay out the donations to the non-profits.
