#!/bin/sh 

cd /var/www/ruby/rails

rails new ettal -d postgresql

cd ettal

bin/rails generate scaffold Entity name:string no:integer frac:float unit:string street:string box:string city:string polsub:string postal:string nation:string phone:string email:string url:string

bin/rails generate scaffold Transaction date:datetime entity:references is_void:boolean

bin/rails generate scaffold Unit unit:string factor:float m:integer kg:integer s:integer a:integer k:integer cd:integer mol:integer

bin/rails generate scaffold Item barcode:string brand:string gendesc:references size:float unit:references

bin/rails generate scaffold Gendesc gendesc:gendesc

bin/rails generate scaffold Account name:string number:string account:references user:references private:boolean

bin/rails generate scaffold User handle:string fullname:string email:string pwdhash:string private:boolean

bin/rails generate scaffold Entry transaction:references item:references price:float{9,4} qty:float is_debit:boolean account:references

bin/rails generate devise:views users # see https://github.com/plataformatec/devise

bin/rake db:migrate

bin/rake routes

mv ../ettal-mockup.sh .

# NOTE:  Columns listed as :string should have been :string.
#        This was corrected in migration db/migrate/20151215142858_text_to_string.rb

