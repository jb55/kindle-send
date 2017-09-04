kindle-send
============

  Some bash scripts for sending stuff to your kindle. It uses pandoc and calibre
  to prepare documents for your kindle.


Tools
-----

  - kindle-send:  Send to kindle. Will convert from the detected format using
                  pandoc and calibre.

  - kindle-email: low level emailer


Configuration
-------------

  A properly configured sendmail is required at this time.

  These environment variables must be set in your ~/.profile or related
  environment configuration file.

    REQUIRED

      KINDLE_FROM_EMAIL=myemail@gmail.com
      KINDLE_EMAIL=jb55@free.kindle.com

    OPTIONAL

      KINDLE_SENDMAIL="/bin/sendmail"
      KINDLE_SENDMAIL_OPTIONS="--read-envelope-from"

  NOTE: `KINDLE_FROM_EMAIL` has to be an email from a "reputable" source, such as
        gmail. Amazon may ignore the email otherwise.

Usage
-----

    $ kindle-send file.txt
    $ kindle-send file.pdf
    $ kindle-send < README.md
    $ AUTHOR="Bob" TITLE="Some Title" kindle-send article.md
    $ curl -sL "https://news.com/article" | kindle-send


Install
-------

    $ make install


Dependencies
------------

  - pandoc
  - calibre


