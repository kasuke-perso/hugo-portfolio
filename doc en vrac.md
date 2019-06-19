# Comment JE me sers de Hugo

* Lancer son serveur avec les pages modifiées hugo server -D (config les variables d'environnement)
* Lancer son serveur sur un serveur : hugo server --bind=0.0.0.0 --baseUrl=http://mon.ip.ou.mon.adressse/ (--port=80)

-------------------------------------------------------
* __archetypes__ : contient les éléments qui seront automatiquement rajouté quand vous créerez un nouvel article
* __config.toml__ : fichier texte où se trouve la configuration de votre site
* __content__ : contiendra vos articles
* __layouts__ : contient les squelettes des pages qui seront générés
* __static__ : contiendra les données statiques ajoutées à votre site (les images,js, css,…)
* __themes__ : où vous pourrez mettre les différents thèmes Hugo

* Ajouter un nouveau post : `hugo new blog/tite-de-mon-article.md`
