# tools-k8s



## 一个工具集镜像

### netstat，ip，iptables，ifconfig，ps，nginx，stress、dig、iperf3、ssh、kubectl、helm、calicoctl、（k6,wrk,ab） 、 fio 、 tcpdump 



```sh

# centos:7.6.1810  # 基础镜像

# 安装iptables
yum install iptables -y
# 验证iptables版本，
iptables -h
# iptables v1.4.21    # 好像这个版本kube-proxy用不了


# yum 安装 ip工具
yum install iproute -y
# yum 安装 ifconfig,netstat ( rpm -qf /usr/bin/netstat )
yum install net-tools -y


# ssh client
yum install openssh-clients -y

# dig工具
yum install bind-utils -y


# 安装stress工具
yum install epel-release -y
yum install stress -y

# which命令安装
yum install which -y

# 安装nginx  nginx -g "daemon off;"
yum install nginx -y

# 安装ab工具
yum install httpd-tools -y

# 安装fio工具
yum install -y fio -y

# 安装tcpdump工具
yum install tcpdump -y


# 以上是从节点直接拷贝二进制文件

# calicoctl   https://www.cnblogs.com/liugp/p/16913845.html
#                 https://github.com/projectcalico/calico/releases/download/v3.26.3/calicoctl-linux-amd64
#                 scp root@192.168.113.246:/usr/local/bin/calicoctl /usr/bin/calicoctl

# helm    安装helm   https://github.com/helm/helm/releases
#                 scp root@192.168.113.246:/usr/bin/helm /usr/bin/helm

# k6   压测http工具k6 https://github.com/grafana/k6/releases
#                 scp root@192.168.113.246:/usr/bin/k6 /usr/bin/k6

# wrk   https://github.com/wg/wrk/releases/tag/4.2.0    ,   需要linux编译一下
#                 scp root@192.168.113.246:/usr/bin/wrk /usr/bin/wrk

# kubectl
#                  scp root@192.168.113.246:/usr/bin/kubectl /usr/bin/kubectl

# kubeadm
#                  scp root@192.168.113.246:/usr/bin/kubeadm /usr/bin/kubeadm




```





