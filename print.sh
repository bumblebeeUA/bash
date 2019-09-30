#!/bin/bash
hello="hello"
while true
do
curl -X POST "https://api.telegram.org/bot965899101:AAE2av6Fg5hZqW2PzOGF8xBUaOEnon2hBv0/sendMessage" -d "chat_id=-1001422749448&text=$hello-привет"
sleep 5


done
