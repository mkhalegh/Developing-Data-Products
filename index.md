---
title       : Modified Mercally Intensity Scale Identifier
subtitle    : How did you feel it?
author      : Mona Khaleghy Rad
output      : html_document
runtime     : shiny
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [shiny, interactive]        # {mathjax, quiz, bootstrap}
mode        : standalone  # {standalone, draft, selfcontained}
knit        : slidify::knit2slides
theme       : united
---

## What is Modified Mercalli Intensity?

* A seismic scale used for measuring the intensity of an earthquake. 
* It measures the effects of an earthquake. 
* Note: The intensity of an earthquake is not totally determined by its magnitude. 
* It is not based on first physical principles, it is based on observed effects.

--- .class #id 

## How did you feel?

* Choose how you felt during a seismic shaking. 
* It tells you the coresponding Mercalli Intensity
* Simple and convenient!

--- &interactive

## The App

<div class="row-fluid">
  <div class="col-sm-4">
    <form class="well">
      <div class="form-group shiny-input-container">
        <label class="control-label" for="feel">
          <h5 style="color:black">How did you feel it?</h5>
        </label>
        <div>
          <select id="feel"><option value="Barely sensed only by a very few people." selected>Barely sensed only by a very few people.</option>
<option value="Felt only by a few people at rest in houses or on upper floors.">Felt only by a few people at rest in houses or on upper floors.</option>
<option value="Felt indoors as a light vibration. Hanging objects may swing slightly.">Felt indoors as a light vibration. Hanging objects may swing slightly.</option>
<option value="Generally noticed indoors, but not outside, as a moderate vibration or jolt. Light sleepers may be awakened. Walls may creak, and glassware, crockery, doors or windows rattle.">Generally noticed indoors, but not outside, as a moderate vibration or jolt. Light sleepers may be awakened. Walls may creak, and glassware, crockery, doors or windows rattle.</option>
<option value="Generally felt outside and by almost everyone indoors. Most sleepers are awakened and a few people alarmed. Small objects are shifted or overturned, and pictures knock against the wall. Some glassware and crockery may break, and loosely secured doors may swing open and shut.">Generally felt outside and by almost everyone indoors. Most sleepers are awakened and a few people alarmed. Small objects are shifted or overturned, and pictures knock against the wall. Some glassware and crockery may break, and loosely secured doors may swing open and shut.</option>
<option value="Felt by all. People and animals are alarmed, and many run outside. Walking steadily is difficult. Furniture and appliances may move on smooth surfaces, and objects fall from walls and shelves. Glassware and crockery break. Slight non-structural damage to buildings may occur.">Felt by all. People and animals are alarmed, and many run outside. Walking steadily is difficult. Furniture and appliances may move on smooth surfaces, and objects fall from walls and shelves. Glassware and crockery break. Slight non-structural damage to buildings may occur.</option>
<option value="People experience difficulty standing. Furniture and appliances are shifted. Substantial damage to fragile or unsecured objects. A few weak buildings are damaged.">People experience difficulty standing. Furniture and appliances are shifted. Substantial damage to fragile or unsecured objects. A few weak buildings are damaged.</option>
<option value="A few buildings are damaged and some weak buildings are destroyed.">A few buildings are damaged and some weak buildings are destroyed.</option>
<option value="Some buildings are damaged and many weak buildings are destroyed.">Some buildings are damaged and many weak buildings are destroyed.</option>
<option value="Many buildings are damaged and most weak buildings are destroyed.">Many buildings are damaged and most weak buildings are destroyed.</option>
<option value="Most buildings are damaged and many buildings are destroyed.">Most buildings are damaged and many buildings are destroyed.</option>
<option value="All buildings are damaged and most buildings are destroyed.">All buildings are damaged and most buildings are destroyed.</option></select>
          <script type="application/json" data-for="feel" data-nonempty="">{}</script>
        </div>
      </div>
      <div class="col-sm-8">
        <h6 style="color:black">The MMI scale of the shaking you felt is:</h6>
        <br/>
        <div id="inputValue" class="shiny-html-output" style="color:green"></div>
        <br/>
        <h6 style="color:black">Which resulted in a prediction of </h6>
        <br/>
        <div id="prediction" class="shiny-html-output" style="color:red"></div>
      </div>
    </form>
  </div>
</div>

<br/>
<br/>
<br/>
https://mkhalegh.shinyapps.io/Developing-Data-Products/

--- .class #id

## Applications

* useful for surveys   

* earthquake intensity analyses 

* educational purposes

<br/>
<br/>
<br/>
Reference: http://en.wikipedia.org/wiki/Mercalli_intensity_scale
