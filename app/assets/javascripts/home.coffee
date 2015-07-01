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

randomDescription = ->
  return descriptions[Math.floor(Math.random() * descriptions.length)]

randomFont = ->
  return fontTypes[Math.floor(Math.random() * fontTypes.length)]

newDescription = ->
  $("#description").html(randomDescription()).css("font-family", randomFont()).fadeIn(2000)

ready = ->
  newDescription()
  interval = setInterval( ->
    $("#description").fadeOut(2000, ->
      newDescription()
    )
  6000)

$(document).ready(ready)
