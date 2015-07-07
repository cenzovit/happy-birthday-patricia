# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
descriptions = [
  "a saucy sultry legend",
  "a caring dedicated beauty",
  "a wonderful amazing friend",
  "a scrumptious foxy NQR victim",
  "a thought-provoking wise woman",
  "a giving thoughtful friend",
  "a beautiful fearless warrior",
  "a supportive huggable force of nature",
  "a strong leggy vixen",
  "an enthusiastic A+ cuddle puddle participant",
  "a bright fun lady",
  "a loyal ambitious lady",
  "a gorgeous warm hearted go getter",
  "an adventurous sassy friend",
  "a kind magical unicorn",
  "a driven passionate character",
  "a beautiful strong best friend",
  "a supportive always-down partner in crime",
  "an adventurous outdoorsy boss",
  "a tough fearless qtpie!",
  "a FABULOUS zen betch",
  "an otherworldly legendary goddess",
  "a strong powerful bananabear",
  "an introspective adventure-seeking seer",
  "a witty inspiring goofball",
  "a committed wholesome wild thang"
]

fontTypes = [
  "'Indie Flower', cursive",
  "'Pacifico', cursive",
  "'Shadows Into Light Two', cursive"
]

shuffle = (a) ->
  i = a.length
  while --i > 0
    j = ~~(Math.random() * (i + 1))
    t = a[j]
    a[j] = a[i]
    a[i] = t
  a

currentFontIndex = 0
currentDescriptionIndex = 0

nextDescription = ->
  return descriptions[(currentDescriptionIndex++) % (descriptions.length)]

nextFont = ->
  return fontTypes[(currentFontIndex++) % (fontTypes.length)]

newDescription = ->
  $("#description").html(nextDescription()).css("font-family", nextFont()).fadeIn(4000)

ready = ->
  shuffle(descriptions)
  newDescription()
  interval = setInterval( ->
    $("#description").fadeOut(2000, ->
      newDescription()
    )
  6000)

$(document).ready(ready)
