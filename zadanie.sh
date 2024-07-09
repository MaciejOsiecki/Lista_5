#!/bin/bash
# Skrypt do zadania

# Flagi
data=false
logs=false
help=false

# Parsowanie flag
while [[ "$#" -gt 0 ]]; do
    case $1 in
        --date|-d) data=true ;;
        --logs|-l) logs=true ;;
        --help|-h) help=true ;;
    esac
    shift
done

# Implementacja logiki flag
if [ "$data" = true ]; then
    echo "Wybrano flagę data."
    # Dodaj tutaj swoją logikę
fi

if [ "$logs" = true ]; then
    echo "Wybrano flagę logs."

fi

if [ "


