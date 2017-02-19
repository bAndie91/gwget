
## Features

* invocation
	* run single instance (per DBus sessions)
	* accept all __wget command line options__
	* popup 'New Download' dialog when command line paramaters given
* main interface
	* support grouped actions: start, pause, clear
	* coulmns
		* Name - output file's name, or the filename part of the URL if output is not yet available
		* Progress - percetange
		* Status - Queued, Init, Downloading, Saved, Failed, Paused, Renaming
		* Added - when you added the current download
		* Speed in kB/s, ETA, and last line of log
	* open files, containing folders with [`mimeopen-gui`](https://github.com/bAndie91/mimeopen-gui)
	* easy rename, delete, re-download file and read logs
* support Drag and Drop
	* you can DnD items multiple times, it will gather all of the URLs dropped in
* "New Download" panel
	* textarea for URLs
	* new file name to rename to after download finished
	* target folder
	* limit bandwith
	* specify cookies either by file or inline
	* specify POST parameters, attempts, credentials, proxy url, user agent, referer, other options accepted by wget
	* specify shell command to run after download finished
* start new downloads
	* start only one download from the same domain at once
	* queue only mode: not start anything
	* select queued downloads when they have been queued
* i18n
	* en
	* hu_HU

## Key Bindings

* `Ctrl-N` - New download dialog
* `Ctrl-R` - Start/Resume all downloads
* `Ctrl-K` - Pause all downloads (mnemonic: Kill)
* `Ctrl-L` - Show the log of the selected download
* `Ctrl-P` - Show the parameters of the selected download
* `Ctrl-O` - Options
* `Ctrl-Q` - Quit
* `Delete` - Remove download (entry only, not file)
* `Return` - Open downloaded file
* `Space` - Rename in place
* `Ctrl-Enter` - On New download dialog - Start downloading
* `Ctrl-Shift-Enter` - On New download dialog - Queue downloads

## Screenshots

![](img/1.png)
![](img/2.png)
![](img/4.png)
