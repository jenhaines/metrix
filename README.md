##Metrix

####A general purpose analytics service that tracks events on your website

* a client-side Javascript snippet that allows a user track events on their website* 
* a server-side API that captures and saves those events to a database* 
* a Rails application that displays the captured event data for a user.

#####How to setup Metrix to track events on a website

* Sign up for a free account at the Metrix website.
* Create a profile for the application.
* Insert the generated Javascript code in your website

#####Javascript code needed to track events with Metrix

Put this Javascript function in your code so your objects can access it globally.

```js
  function send_event(_bm_event){
    var _bm_request = new $.ajax({
      url: "https://metrix-jh.herokuapp.com/api/events.json",
      method: "post",
      data: {event: _bm_event}
    })
  }
```

`_bm_event` takes four variables.

`app_id:` *unique id for each app (WILL NOT WORK WITHOUT IT)*

`name:` *Name you choose for the event*

`action_1:` *One of two action variables that can be sent to Metrix*

`action_2` *Second action variable that can be be sent to Metrix*

#####Sample code of a link click being sent Metrix

```js<a href="#" onclick="send_event({app_id: 42, name: 'example.com', action_1: 'homepage', action_2: 'mailto link clicked'})">click me</a>
```

That's it. From that point your events are being sent to Metrix where it can view in many different charts and graphs to fit your needs.

[Heroku preview](https://metrix-jh.herokuapp.com)

