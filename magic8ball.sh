#!/bin/bash
#Credit: https://www.linuxjournal.com/content/bash-shell-games-lets-play-go-fish

answers=("Absolutely." "Definitely Not." "Of Course Not." "Get A Life." "If you think so..." "I See No Other Future." "My Inside Sources Indicate So.")

echo ""
echo "What is your question for the magic 8-ball?"
read question
answer=$(( $RANDOM % 20 ))

echo ""
echo "My mystical powers indicate: "
echo "	${answers[$answer]}"
echo ""
