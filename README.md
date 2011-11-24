Temporary Directories Cleaner
=====================
Shell script to put in cron tab to keep a list of temporary directories clean
It's customizable with a set of preferences

HOWTO
-----
Edit the first part of the script to fit your needs
Make it executable
Put it in crontab


CONFIGURATION
-------------
It's pretty easy to configure this simple script:

*  DIR = whitespace separated list of directory you want to process by this script cleaner
*  LOG_FILE = absolute path to a text file where you will find both error messages and names of the deleted files
*  CRITERIA_FLAG = this script uses find, this flag will be used to create criteria like -atime. -mtime and -ctime
