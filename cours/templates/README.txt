Ajouter le répertoire cours/ et slide/ et les fichiers de module dans 
C:\Users\wendl\AppData\Roaming\typst\packages\local

Le fichier myTemplate est utile avec pandoc pour convertir des fichiers word

exemple
pandoc '.\01 Composition_systemeCor.docx' -o .\C1_test2.typ --extract-media --wrap=none --standalone --template="myTemplate"

possible aussi à partir d'un md
pandoc .\C1Alt.md -o .\C1_test.typ --standalone --template="myTemplate"
