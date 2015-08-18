#!/bin/bash

mkdir -p /web/logs

cd /web/env/soft/

tar zxvf seafile-server_4.0.5_x86-64.tar.gz 
rm -rf /data/seafile
mkdir -p /data/seafile
mv /web/env/soft/seafile-server-4.0.5 /data/seafile/
cd /data/seafile/seafile-server-4.0.5
sh setup-seafile-mysql.sh

:<<BLOCK
-----------------------------------------------------------------
This script will guide you to setup your seafile server using MySQL.
Make sure you have read seafile server manual at

        https://github.com/haiwen/seafile/wiki

Press ENTER to continue
-----------------------------------------------------------------


What is the name of the server? It will be displayed on the client.
3 - 15 letters or digits
[ server name ] chenggongqiao

What is the ip or domain of the server?
For example: www.mycompany.com, 192.168.1.101
[ This server's ip or domain ] seafile.chenggongqiao.com

Which port do you want to use for the ccnet server?
[ default "10001" ] 8006

Where do you want to put your seafile data?
Please use a volume with enough free space
[ default "/data/seafile/seafile-data" ] 

Which port do you want to use for the seafile server?
[ default "12001" ] 8007

Which port do you want to use for the seafile httpserver?
[ default "8082" ] 9005

-------------------------------------------------------
Please choose a way to initialize seafile databases:
-------------------------------------------------------

[1] Create new ccnet/seafile/seahub databases
[2] Use existing ccnet/seafile/seahub databases

[ 1 or 2 ] 1

What is the host of mysql server?
[ default "localhost" ] 

What is the port of mysql server?
[ default "3306" ] 8004

What is the password of the mysql root user?
[ root password ] 

verifying password of user root ...  done

Enter the name for mysql user of seafile. It would be created if not exists.
[ default "root" ] 

Enter the database name for ccnet-server:
[ default "ccnet-db" ] 

Enter the database name for seafile-server:
[ default "seafile-db" ] 

Enter the database name for seahub:
[ default "seahub-db" ] 

---------------------------------
This is your configuration
---------------------------------

    server name:            chenggongqiao
    server ip/domain:       seafile.chenggongqiao.com
    ccnet port:             8006

    seafile data dir:       /data/seafile/seafile-data
    seafile port:           8007
    httpserver port:        9005

    database:               create new
    ccnet database:         ccnet-db
    seafile database:       seafile-db
    seahub database:        seahub-db
    database user:          root



---------------------------------
Press ENTER to continue, or Ctrl-C to abort
---------------------------------

Generating ccnet configuration ...

done
Successly create configuration dir /data/seafile/ccnet.
Generating seafile configuration ...

Done.
done
Generating seahub configuration ...

----------------------------------------
Now creating seahub database tables ...

----------------------------------------
Loading ccnet config from /data/seafile/ccnet
Loading seafile config from /data/seafile/seafile-data
Creating tables ...
Creating table django_content_type
Creating table django_session
Creating table registration_registrationprofile
Creating table captcha_captchastore
Creating table api2_token
Creating table api2_tokenv2
Creating table avatar_avatar
Creating table avatar_groupavatar
Creating table base_uuidobjidmap
Creating table base_filediscuss
Creating table base_filecontributors
Creating table base_userstarredfiles
Creating table base_dirfileslastmodifiedinfo
Creating table base_filelastmodifiedinfo
Creating table base_userenabledmodule
Creating table base_groupenabledmodule
Creating table base_userlastlogin
Creating table base_commandslastcheck
Creating table base_innerpubmsg
Creating table base_innerpubmsgreply
Creating table base_devicetoken
Creating table contacts_contact
Creating table wiki_personalwiki
Creating table wiki_groupwiki
Creating table group_groupmessage
Creating table group_messagereply
Creating table group_messageattachment
Creating table group_publicgroup
Creating table message_usermessage
Creating table message_usermsglastcheck
Creating table message_usermsgattachment
Creating table notifications_notification
Creating table notifications_usernotification
Creating table options_useroptions
Creating table profile_profile
Creating table profile_detailedprofile
Creating table share_anonymousshare
Creating table share_fileshare
Creating table share_uploadlinkshare
Creating table share_privatefiledirshare
Installing custom SQL ...
Installing indexes ...
Installed 0 object(s) from 0 fixture(s)

creating seafile-server-latest symbolic link ...  done




-----------------------------------------------------------------
Your seafile server configuration has been finished successfully.
-----------------------------------------------------------------

run seafile server:     ./seafile.sh { start | stop | restart }
run seahub  server:     ./seahub.sh  { start <port> | stop | restart <port> }

-----------------------------------------------------------------
If you are behind a firewall, remember to allow input/output of these tcp ports:
-----------------------------------------------------------------

port of ccnet server:         8006
port of seafile server:       8007
port of seafile httpserver:   9005
port of seahub:               8000

When problems occur, Refer to

        https://github.com/haiwen/seafile/wiki

for information.
BLOCK

