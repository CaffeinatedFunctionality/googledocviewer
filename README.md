# Googledocviewer

Here's a little jQuery plugin Jawish Hameed wrote that automatically embeds the Google Docs Viewer for viewing pdf, doc, docx, ppt and tiff files linked to by anchor tags.

The Google Docs Viewer is an embeddable browser-based viewer that requires only a URL to a file available online. This neatly bypasses the need for users to have compatible software on their machines for those file types and displays the document right in the browser.

## Installation

Add this line to your application's Gemfile:

    gem 'googledocviewer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install googledocviewer


#### Javascript


You will need to add global jquery_mb_extruder object in your application.js:

	//= require googledocviewer

## Usage


Set some class name or id to the anchor tag for all URLs to files that you want to be displayed using the Google Docs Viewer. E.g. "embed"

```html
	<a href="url/to/file.pdf" class="embed">Download file</a>
```	
or	
```html
	<a href="url/to/file.pdf" id="embedURL">Download file</a>
```

Initialize gDocsViewer and set it to process the URL with id or all URLs with the class name set in the previous step.

```html
	$('a.embed').gdocsViewer();
```	
or
```html
	$('#embedURL').gdocsViewer();
```

## Settings

The default width is 600px height is 700px. You can change this in your javascript by passing in a json object for width and height. For example, you would change width to 400px and height to 500px by doing...

```html
	$('a.embed').gdocsViewer({width :'400',height : '500'});
```	
or
```html
	$('#embedURL').gdocsViewer({width :'400',height : '500'});
```

### You can now change security settings! Default is 'http', however if you do not allow http in production you can now use https.

```html
  $('#embedURL').gdocsViewer({security : 'https'});
```

## Contributing

1. Fork it ( https://github.com/scy0846/googledocviewer/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
