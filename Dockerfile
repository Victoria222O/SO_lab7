# Folosește imaginea oficială Nginx ca bază
FROM nginx:alpine

# Copiază fișierele site-ului web și imaginile în directorul Nginx din container
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY img1.png /usr/share/nginx/html/
COPY img2.png /usr/share/nginx/html/
COPY img3.png /usr/share/nginx/html/
COPY img4.png /usr/share/nginx/html/


# Permite Nginx să servească fișierele
RUN chmod -R 755 /usr/share/nginx/html/

# Expune portul 80 pentru acces la site
EXPOSE 80

# Setează comanda default pentru container, care va lansa serverul Nginx
CMD ["nginx", "-g", "daemon off;"]
