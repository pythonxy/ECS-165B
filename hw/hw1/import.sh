#!/bin/bash

echo -e "\e[41m            dropdb mondial            \e[0m"
dropdb hw1
echo -e "\e[31m            DONE            \e[0m"

echo -e "\e[41m            createdb mondial            \e[0m"
createdb hw1
echo -e "\e[31m            DONE            \e[0m"

echo -e "\e[41m            loading mondial-schema.sql            \e[0m"
psql hw1 -q -f p4-schema.sql
echo -e "\e[31m            DONE            \e[0m"

echo -e "\e[41m            loading mondial-inputs.sql            \e[0m"
psql hw1 -q -f p4-inputs.sql
echo -e "\e[31m            DONE            \e[0m"


echo -e "\e[41m!!!!         ALL DONE         !!!!\e[0m"