# Mobile Number MCC and MCN retrieval service
### CURRENT PROJECT IS UNDER DEVELOPMENT NOT FOR USE
I saw one question on Quora that how can we retrieve MCC and MCN from mobile
number I am being Voip Engineer, felt a realy need for this. But I found it is
very difficult to get these numbers. As there is no such data which can match
E164 number to MCN and MCC.

This is collection of some csv file I created for this purpose, and I will
launch a new API service where you can provde any mobile/landline number and it
will give you details about its network and landline featuers with countrya nd
areas.

This is just startup project for this. Follow steps to make your own API in ruby
on rails.


* Ruby version
2.4.2

* Rails version
Rails 5.1.6.1

Installation

Please check if you already have RVM or ruby version 2.1.1 installed. After
installation of appropriate ruby you can start working. I am RVM so have
`.ruby-version` file which change ruby to this version on my development
machine.

```
git clone 
```

Now cd to this directory and run following command. Mak

```
cd projectname
bundle install
```
* Configuration
I am using sqlite so there is no need of any configuration.

### Database creation

Now use following commands to create database

```
rake db:create db:migrate
```

* Database initialization

Use following commands to initialize database. It will run a seed script and
upload csv files to database

```
rake db:seed
```

* How to run

Use following commands to run this application.

```
rails s
```

### Accessing using Swagger documentation api

You can use builtin Swagger Api viewer with following commands on your browser

```
http://localhost:3000/api-docs/index.html
```

### You can user curl also with following parameters

```
curl -X GET "http://localhost:3000/api/v1/checknumber/###YOURNUMBER###" -H "accept: application/json"
```


Now you can access website on
http://localhost:3000/api/v1/checknumber/###YOURNUMBER###

### How to contribute
Please help me correct all codes and other information. I am soon going to
launch this online as an API so you can easily use it. Following is procedure
for contribution

#### Contributing

You can fork our repository and than run it. Than make new branch using
following command

```
git branch -b your_moidifcation_name
```
Now do changes and at end if all working fine, than just send pull request.


