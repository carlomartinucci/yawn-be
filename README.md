# README

## Setup

* `git clone`

* `bundle`

* `rails db:migrate`

* Generate gmail credentials: visit `https://myaccount.google.com/apppasswords`, add an app (select 'others') and get the password.

* Set your email in `Rails.application.credentials.gmail[:email]` and your password in `Rails.application.credentials.gmail[:password]` using `rails credentials:edit` (maybe you need `EDITOR="nano" rails credentials:edit`). Set it like this:

```yml
gmail:
  email: YOUR_EMAIL
  password: YOUR_PASSWORD
```

* Create `config/settings.local.yml`. Set it like:

```yml
deliver_to:
  - '<Email address>'
  - '<Other email address>'
  - ...
```

## Deliver
* `rails s`

Now when you click "deliver" from the yawn extension, your newsletter will be created and delivered! Well done ;)
