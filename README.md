# Ruby OO Youtube Example

## Instructions
* Run `bundle install`
* Create a file called `.env` and add the following line:
* `API_KEY=paste_key_you_get_from_instructor`
* Run `ruby example.rb` from the console to see an example of what we will be building today _(or visit [this link](https://www.youtube.com/watch?v=iPTqbvIWYMg))_

Your goal is to use the example video to guide you. Check it to see what functionality your program should have.

## What you start with

When writing your own code in the `run.rb` file, you will be able to call _one special method_:

### `get_videos_from_youtube(keyword)`
It's not necessary to know all of the inner workings of this method to be able to use it in our program! That's pretty cool!

You can use it like this:
* pass it a string of the keyword you want to search youtube with.
* Ex: `get_videos_from_youtube("turtles")`
* It returns an Array of `Video` instances:
```ruby
[
  <Video
  @link="https://www.youtube.com/watch?v=7c7Oz5yNGkE",
  @title="Catching Sea Turtles!">,
 <Video
  @link="https://www.youtube.com/watch?v=pH6bgPEh8yw",
  @title="Releasing the Turtles in the Outdoor Pond">,
 <Video
  @link="https://www.youtube.com/watch?v=jh9AyTer7bw",
  @title="MINI POOL Pond for BABY TURTLES!">,
 <Video
  @link="https://www.youtube.com/watch?v=2iXMGDym0pA",
  @title=
   "Red Eared Slider Turtle covering her nest and laying egg- Baby Turtle hatching">,
 <Video
  @link="https://www.youtube.com/watch?v=P2DI-57BDKo",
  @title="Moving ALL My TURTLES indoors...">
]
```

### `Video#open_in_browser`

`Video` instances have `link` and `title` reader methods.

`Video` instances also have an `open_in_browser` method. Calling `open_in_browser` on an instance of the `Video` class will launch your web browser and open the video on youtube.

Again, we don't need to know all the inner workings of this method to correctly use it in our code. If you're interested in going deeper-- ask your instructor!
