#!/bin/bash

# Fonction qui demande à l'utilisateur de deviner le nombre de fichiers
guess_game() {
    # Calculer le nombre de fichiers dans le répertoire actuel
    local correct_answer=$(ls -1 | wc -l)
    local guess=-1

    # Boucle pour demander à l'utilisateur de deviner jusqu'à ce que ce soit correct
    while [ "$guess" -ne "$correct_answer" ]; do
        # Demander à l'utilisateur de faire une estimation
        echo "Devinez combien de fichiers sont dans le répertoire actuel :"
        read guess

        # Vérifier si la réponse est correcte, trop basse ou trop haute
        if [ "$guess" -lt "$correct_answer" ]; then
            echo "Trop bas. Essayez encore !"
        elif [ "$guess" -gt "$correct_answer" ]; then
            echo "Trop haut. Essayez encore !"
        else
            echo "Bravo ! Vous avez trouvé le bon nombre de fichiers."
        fi
    done
}

# Appeler la fonction pour démarrer le jeu
guess_game
