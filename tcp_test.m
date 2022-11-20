clear all 
close all
clc

address = '127.0.0.1';
port = 85;

server = tcpserver(address,port)
sendata = ["sin", 10];
len = length(sendata);
x = jsonencode(sendata);

waitfor(server,"Connected",1)

disp("going into while")

write(server,x);
disp("sending value")

waitfor(server,"Connected",0)
clear server
