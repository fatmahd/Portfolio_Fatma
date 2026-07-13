FROM nginx:1.27-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/styles.css
COPY script.js /usr/share/nginx/html/script.js
COPY assets /usr/share/nginx/html/assets
COPY Fatma_Haddad_SOC_Analyst.pdf /usr/share/nginx/html/Fatma_Haddad_SOC_Analyst.pdf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
