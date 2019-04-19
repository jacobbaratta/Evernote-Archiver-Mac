# Evernote Archiver for Mac
>A simple Applescript-based solution for archiving your entire Evernote library as both ENEX and HTML (including attachments)

This Applescript script exports all of your Evernote notes into `~/Documents/Evernote backups/CURRENT_DATE/My Notes.enex`, then exports all of your individual notes as HTML (along with any attached files, which are placed inside folders) into a temporary folder, which is zipped up as `~/Documents/Evernote backups/CURRENT_DATE/My Notes (HTML).zip`.

## Installation

Download or clone the repo into a folder. Open `Evernote Archiver.applescript`, edit paths if desired, and compile it.

## Usage

You can run the compiled applescript, or export it as a compiled .scpt file, or as a .app, or as whatever is convenient for you. Or alternatively, you can run the following line in bash:

```sh
osascript "Evernote Archiver.applescript"
```

Note that there is no progress indicator displayed during the phrase where it zips up the exported HTML files and attachments into `My Notes.zip` and subsequently deletes the temporary folder, although if you run it in bash it will display as executing during this period, and if you run it in Script Editor there will be a little spinning progress indicator at the bottom of the window.


## Release History

* 1.0 (Apr 8, 2018)
	* First public release
* 1.1 (Apr 19, 2019)
	* Changed folder date format to YYYY-MM-DD as prior format could not be sorted properly by name alone.
	* Switched to generating dates via `date` due to the limitations of Applescript's native date/time functionality
	* Added some additional code comments
	* Minor code improvements
	* Minor copyedits to code & code comments
	* Minor improvements to documentation
	* Updated copyright year in MIT license

## Meta

Written by Jacob Baratta.

Distributed under the MIT license. See ``LICENSE`` for more information.

[https://github.com/jacobbaratta](https://github.com/jacobbaratta)
