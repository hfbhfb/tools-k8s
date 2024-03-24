FROM docker.io/hefabao/tools-k8s:v0.1
COPY index.html /usr/share/nginx/html/index.html
COPY bashrc /root/.bashrc
CMD ["nginx","-g","daemon off;]