#!/usr/bin/osascript
tell application "Evernote"
	set myNotes to find notes

	# Set the folder name to YYYY-MM-DD
	set folderName to do shell script "date -j '+%Y-%m-%d'"
	
	# Set the output directory for all backups
	set folderPath to POSIX path of (path to documents folder as string)
	set outputFolder to folderPath & "/Evernote backups/" & folderName

	do shell script "mkdir -p " & quoted form of outputFolder
	
	# Set the file name for ENEX notes
	set enexFileName to "My Notes"
	
	set outputFileENEX to outputFolder & "/" & enexFileName & ".enex"
	export myNotes to outputFileENEX format ENEX

	# Set the temporary folder name for HTML note processing
	set htmlFolderName to "HTML"
	
	set outputFolderHTML to outputFolder & "/" & htmlFolderName
	do shell script "mkdir -p " & quoted form of outputFolderHTML
	export myNotes to outputFolderHTML format HTML
	
	# Set the file name for the HTML notes .zip file
	set zipFileName to "My Notes (HTML)" & ".zip"
	

	# Potential TODO: move the zip operations into terminal?


	# Compress the HTML notes folder into a .zip archive
	do shell script "cd " & quoted form of outputFolder & "; " & "zip -r " & quoted form of zipFileName & " " & quoted form of htmlFolderName
	# Delete the HTML notes folder
	do shell script "rm -rf " & quoted form of outputFolderHTML
	
	"Script is done executing!"
end tell