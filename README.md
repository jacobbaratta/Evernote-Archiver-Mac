# Evernote Archiver for Mac
>A basic Applescript-based solution for archiving your entire Evernote library as both ENEX and HTML (with attachments exported)

This Applescript script exports all of your Evernote notes into `~/Documents/Evernote backups/<DATE>/My Notes.enex`, then exports all of your individual notes as HTML (along with any attached files, which are placed inside folders) into a temporary folder, which is zipped up as `~/Documents/Evernote backups/<DATE>/My Notes.zip`.

## Installation

Download or clone the repo into a folder. Open `Evernote Archiver.applescript`, edit paths if desired, and compile it.

## Usage

You can run the compiled applescript, or export it as a compiled .scpt file, or as a .app, or as whatever is convenient for you. Or alternatively, you can run the following line in bash:

```sh
osascript "Evernote Archiver.applescript"
```

Note that there is no progress indicator displayed during the phrase where it zips up the exported HTML files and attachments into `My Notes.zip` and subsequently deletes the temporary folder, although if you run it in bash it will display as executing during this period, and if you run it in Script Editor there will be a little spinning progress indicator at the bottom of the window.


## Release History

* 1.0
    * First public release

## Meta

Written by Jacob Baratta.

Distributed under the MIT license. See ``LICENSE`` for more information.

[https://github.com/jacobbaratta](https://github.com/jacobbaratta)
