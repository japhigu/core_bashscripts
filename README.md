# core_bashscripts
Bashcript for resetting the mysql root password when logged in as root over ssh or console.

# Usage

Copy `resetMysqlRoot.bash` to `/usr/bin` and run

	$ chmod 755 resetMysqlRoot.bash
Then, run

    $ resetMysqlRoot.bash password

to set your mySql root password to `password`.