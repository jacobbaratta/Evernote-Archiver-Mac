#!/usr/bin/osascript
tell application "Evernote"
	set myNotes to find notes
	set currentDate to current date
	set folderName to (month of currentDate) & " " & (day of currentDate) & " " & (year of currentDate)
	
	# Set the output directory for all backups
	set folderPath to POSIX path of (path to documents folder as string)
	set outputFolder to folderPath & "/Evernote backups/" & folderName
	
	do shell script "mkdir -p " & quoted form of outputFolder
	
	# Set the file name for ENEX notes
	set enexFileName to "My Notes"
	
	set outputFileENEX to outputFolder & "/" & enexFileName & ".enex"
	export myNotes to outputFileENEX format ENEX
	
	# Set the temporary folder name for html note processing
	set htmlFolderName to "html"
	
	set outputFolderHTML to outputFolder & "/" & htmlFolderName
	do shell script "mkdir -p " & quoted form of outputFolderHTML
	export myNotes to outputFolderHTML format HTML
	
	# Set the file name for the html notes zipfile
	set zipFileName to "My Notes"
	
	do shell script "cd " & quoted form of outputFolder & "; " & "zip -r " & quoted form of zipFileName & ".zip " & quoted form of htmlFolderName
	do shell script "rm -rf " & quoted form of outputFolderHTML
end tell