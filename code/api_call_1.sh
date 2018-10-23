# Enregistre un joueur pour une nouvelle partie
curl -X POST -H "joueur: Joueur1" http://localhost:5000/enregistrer_joueur

# Retourne une liste des bateaux que l'on peut positionner
curl -X GET http://localhost:5000/obtenir_noms_bateaux

# Positionne un bateau sur la grille
curl -X POST -H "joueur: Joueur1" -H "bateau: torpilleur" -H "position: A1" -H "orientation: horizontal" http://localhost:5000/positionner_bateau

# Enlève un bateau de la grille
curl -X POST -H "joueur: Joueur1" -H "bateau: torpilleur" http://localhost:5000/enlever_bateau

# Ajoute un bateau aléatoirement sur la grille
curl -X POST -H "joueur: Joueur1" -H "bateau: torpilleur" http://localhost:5000/ajouter_bateau

# Fait une rotation d'un bateau positionné si possible
curl -X POST -H "joueur: Joueur1" -H "bateau: torpilleur" http://localhost:5000/rotation_bateau

# Indique que le joueur est prêt à commencer la partie
curl -X POST -H "joueur: Joueur1" http://localhost:5000/pret_commencer_partie

# Indique que le joueur souhaite terminer la partie
curl -X POST -H "joueur: Joueur1" http://localhost:5000/terminer_partie

# Le joueur attaque lorsque c'est son tour
curl -X POST -H "joueur: Joueur1" -H "position: A1" http://localhost:5000/attaquer

# Obtient l'état de la partie
curl -X POST -H "joueur: Joueur1" http://localhost:5000/obtenir_etat_partie
