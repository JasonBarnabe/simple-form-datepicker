# simple-form-datepicker

* [Homepage](https://rubygems.org/gems/simple-form-datepicker)
* [Documentation](http://rubydoc.info/gems/simple-form-datepicker/frames)
* [Email](mailto:paul at tymate.com)

[<img src="https://badge.fury.io/rb/simple-form-datepicker.png" alt="Gem Version" />](http://badge.fury.io/rb/simple-form-datepicker)

## Description

Provides an easy to use date picker for SimpleForm.

## Features

- Easy to use.
- Localizable with I18n and I18n-js.

## Installation
##### Add this to your gemfile

    gem 'simple-form-datepicker-reloaded'

##### In app/assets/javascripts/application.js

    //= require jquery.ui.all

or

    //= require jquery.ui.datepicker
    
or just the localisations:

    //= require jquery.ui.datepicker-en
    //= require jquery.ui.datepicker-es
    //= require jquery.ui.datepicker-fr

##### In app/assets/stylesheets/application.css

    *= require jquery.ui.datepicker

##### In your simple forms

    = f.input :date_attribute, :as :datepicker

  or

    <%= f.input :release_date, as: :datepicker %>

##### Initialize JQueryUI's datepicker:
```javascript
  $("input.datepicker").each(function(input) {
    $(this).datepicker({
      dateFormat: "yy-mm-dd",
      altField: $(this).next()
    })

    // If you use i18n-js you can set the locale like that
    $(this).datepicker("option", $.datepicker.regional[I18n.currentLocale()]);
  })
```
  or in coffee script

```coffee
$('input.datepicker').each (input) ->
  $(this).datepicker
    dateFormat: 'yy-mm-dd'
    altField: $(this).next()
  # If you use i18n-js you can set the locale like that
  $(this).datepicker 'option', $.datepicker.regional[I18n.currentLocale()]
  return
```

## Requirements

- Simple_form
- Jquery-UI with rails

## TODO

- How to use with i18n-js

### Copyright

Copyright (c) 2013 Paul d'Hubert

See LICENSE.txt for details.
.
