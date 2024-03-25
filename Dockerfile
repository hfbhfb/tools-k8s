FROM docker.io/hefabao/tools-k8s:v0.2
COPY index.html /usr/share/nginx/html/index.html
COPY bashrc /root/.bashrc
CMD ["nginx","-g","daemon off;]