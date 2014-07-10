<div align="center">
  <a href="http://leastjs.com" target="_blank">
     <img src="http://www.leastjs.com/src/img/least_logo.svg">
  </a>
  <br />
  <br />
  <a href="http://leastjs.com" target="_blank">
    <strong>Visit our Homepage for Demo!</strong>
  </a>
</div>
## least.js 2
> Random and Responsive HiDPI jQuery Gallery based on HTML5 and CSS3

## What's new?
- least.js 2 ist smaller, faster and easier to use and include.
- least.js 2 is optimized for HiDPI (Retina) Devices.
- least.js 2 has more options and features.

## Browser compatibility
- IE 9+
- Safari 6.0+
- Google Chrome 29+
- Firefox 24+
- iOS 6.0+
	
## Directory structure

```
  leastjs2/
        ├── README.md
        ├── node_module		(Grunt modules)
        ├── Gruntfile.coffee	(Grunt Config)
        ├── package.json		(Grunt Config)
        ├── index.html
        ├── src
        │   └──	css
        │   │	├── least.min.scss	(Minified style.scss)
        │   │ ├── least.min.css.map (Source map)
        │   └──	img
        │   │	├── close.svg
        │   │ ├── loading.svg
        │   └──	js
        │   │	└── libs
        │   │	│    └── jquery
        │   │	│    │	└── 2.0.2
        │   │	│    │	    ├── jquery.min.js
        │   │	└── least
        │   │	│   ├── least.js		(Original .js file)
        │   │	│   ├── least.min.js	(Minified .js file)
        │   │ │   ├── least.min.map (Source map)
        │   └──	media		    (Image folder)
        │   │	└── big	      (Fullscreen images)
        │   │	│   ├── 01.jpg	    (Default fullscreen)
        │   │	│   ├── 01@2x.jpg	(HiDPI fullscreen)
        │   │	└── thumbnails  (Thumbnail images)	
        │   │	│   ├── 01.jpg	    (Default thumbnail)
        │   │	│   ├── 01@2x.jpg	(HiDPI thumbnail)
        │   └──	sass	(SASS files)
        │   │	└── assets
        │   │	│   ├── _global.scss
        │   │	│   ├── _mixins.scss
        │   │	│   ├── _options.scss	(SASS options)
        │   │	└── templates
        │   │	│   ├── _least.scss		(least structure)
        │   │	├── style.scss	      (Original style-file)
        ─────
```

## How to use least.js 2
1. [Download least.js 2 from here](http://leastjs.com/downloads/least.zip) or "Clone in Desktop" (Button on the right side)

2. Add the following code elements before end of ```</head>``` tag.

  ```html
  <!-- Responsive viewport for smartphone devices -->
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <!-- least.js 2 CSS file -->
  <link href="src/css/least.min.css" rel="stylesheet" />
  ```
  
3. Add the following code elements into ```<body></body>``` tag.

  ```html
  <!-- Least Gallery -->
  <section id="least">
            
    <!-- Least Gallery: Fullscreen Preview -->
    <div class="least-preview"></div>
            
      <!-- Least Gallery: Thumbnails -->
      <ul class="least-gallery">
        <!-- 1th thumbnail -->
          <li>
            <a href="path-to-your-fullscreen-image default-path:src/media/big/01.jpg" data-subtitle="View Picture" data-caption="Now it's possibe to add an URL-Link into caption text - <a href='http://www.google.com' target='_blank'>GOOGLE</a>" >
              <img src="path-to-your-thumbnail-image default-path:src/media/thumbnails/01.jpg" alt="Alt Image Text" />
            </a>
          </li>
      </ul>
      
  </section>
  <!-- Least Gallery end -->
  ```
4. Add the following code elements before end of ```</body>``` tag.
  
  ```html
  <!-- jQuery library -->
  <script src="src/js/libs/jquery/2.0.2/jquery.min.js"></script>
  <!-- least.js 2 library -->
  <script src="src/js/libs/least/least.min.js"></script>
  ```

5. Now you need to call the Gallery with your class or id.<br />Default Gallery: ```<ul class="least-gallery">``` it's also class ```.least-gallery```.

  ```html
  <script>
    $(document).ready(function(){
      $('.least-gallery').least();
    });
  </script>
  ```
  
## Options
least.js 2 has really great options. You can choose between Javascript, CSS3-SASS or HTML-options.

><strong><u>General Javascript options</u></strong>

<strong>Random</strong>
<br />
Choose between RECENT or RANDOM thumbnails
```javascript
default: 'random': true
options: false or true
```

<strong>Scroll to Gallery</strong>
<br />
Scroll to fullscreen preview
```javascript
default: 'scrollToGallery': true
options: false or true
```

<strong>HiDPI</strong>
<br />
Show '@2x' images on HiDPI devices
```javascript
default: 'scrollToGallery': false
options: false or true
```

><strong><u>General CSS3-SASS options</u></strong>

If you want to edit some CSS3-SASS options you will need to use grunt or CodeKit.
<br/>
To edit the following options (see also below) go to ```src/scss/assets/_options.scss```

```scss
/* @group Options */

	/* @group Master */
	$thumbnail-text: true; /* enable (true) or disable (false) thumbnails title text */
	$outline: true; /* enable (true) or disable (false) thumbnails border */
	/* @end */

	/* @group Vars: Colors */
	$color-black: #000;
	$color-white: #fff;
	$color-gray: #666;
	$color-gray-light: #f1f0f0;
	$color-creem: #f5f5f5;
	/* @end */

	/* @group Gallery-Fullscreen */
	$max-fullscreen-size: 960px; /* default size for fullscreen preview */
	/* @end */

	/* @group Gallery-Thumbails */
	$thumbnail-size-width: 240px; /* default "width" size for thumbnails */
	$thumbnail-size-height: 150px; /* default "height" size for thumbnails */
	/* @end */

/* @end */
```

><strong><u>General HTML options</u></strong>

To add a <strong>headline</strong>, <strong>subheadline</strong> and <strong>caption</strong> text (like headline = Road Trip subheadline ="View picture" and caption="lorem ipsum" ) into your <i>thumbnail & image-preview</i> just use the ```title=""```-element for <strong>headline</strong>, ```data-subtitle=""```-element for <strong>subheadline</strong> and ```data-caption=""```-element for caption text.

```html
<a href="src/media/big/02.jpg" title="Train Rails" data-subtitle="View Picture" data-caption="Now it's possibe to add an URL-Link into caption text - <a href='http://www.google.com' target='_blank'>GOOGLE</a>">
    <img src="src/media/thumbnails/02.jpg" alt="Alt Image Text" />
</a>
```

## Using the HiDPI option
least.js 2 support all HiDPI (Retina) Devices.
<br />
To use this function you will need "@2x"-images.

<strong>What does that mean?</strong>
<br />
Default size for thumbnails is <strong>240px x 150px</strong> and for fullscreen <strong>960px x 600px</strong>.
<br />
You also need for the HiDPI option all images in double (2x) size.
<br />
It's <strong>480px x 300px</strong> for thumbnails and <strong>1920px x 1200px</strong> for fullscreen images.

## Changelog

[See the complete list of changes here](https://github.com/kamilczujowski/least.js-2/blob/master/CHANGELOG.md).

## Social, Copyright and License

For News, updates and support follow me [@kamilczujowski on Twitter](https://twitter.com/kamilczujowski)!
<br />
© Copyright 2014 Kamil Czujowski under [the MIT License (MIT)](https://github.com/kamilczujowski/least.js-2/blob/master/LICENSE).