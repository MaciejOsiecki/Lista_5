#!/bin/bash

# Funkcja do wyświetlania imienia i nazwiska
function wyswietl_imie_nazwisko() {
    echo "Twoje Imię i Nazwisko"
}

# Funkcja do obliczania silni
function oblicz_silnia() {
    local n=$((52756 % 10))
    local silnia=1
    for (( i=1; i<=n; i++ )); do
        silnia=$((silnia * i))
    done
    echo "Silnia z $n to: $silnia"
}

# Funkcja Kwadrat
function drukuj_kwadrat() {
    local bok=$1
    if [[ -z "$bok" ]]; then
        read -p "Podaj długość boku: " bok
    fi
    for (( i=0; i<bok; i++ )); do
        for (( j=0; j<bok; j++ )); do
            echo -n "#"
        done
        echo
    done
}

# Funkcja do zapisywania słowa od tyłu w pliku dane.txt
function zapisz_slowo_od_tylu() {
    read -p "Podaj słowo: " slowo
    od_tylu=$(echo $slowo | rev)
    echo $od_tylu > dane.txt
    echo "Słowo zapisane od tyłu w pliku dane.txt"
}

# Główna logika skryptu
case "$1" in
    -imie|--i)
        wyswietl_imie_nazwisko
        ;;
    -silnia|--s)
        oblicz_silnia
        ;;
    -kwadrat|--k)
        drukuj_kwadrat $2
        ;;
    -zapis|--z)
        zapisz_slowo_od_tylu
        ;;
    *)
        ls -l ~
        ;;
esac

