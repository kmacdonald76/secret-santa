Intro
=====

**secret-santa** can help you manage a list of secret santa participants by
randomly assigning pairings and sending emails. It can avoid pairing 
couples to their significant other, and allows custom email messages to be 
specified.

Dependencies
------------

docker

Usage
-----

Copy config.yml.template to config.yml and enter in the connection details 
for your outgoing mail server. Modify the participants and couples lists and 
the email message if you wish.

    cd secret-santa/
    cp config.yml.template config.yml

Once configured, build image:

    $> docker build . -t secret-santa

Then launch container:

    $> docker run -it secret-santa

Calling secret-santa with config `DEBUG: 1` will output a test pairing of 
participants.

        Test pairings:

        Chad ---> Bill
        Jen ---> Sharon
        Bill ---> Chad
        Sharon ---> Jen

To send out emails with new pairings,
set `DEBUG: 0` in config, rebuild image + launch container.
