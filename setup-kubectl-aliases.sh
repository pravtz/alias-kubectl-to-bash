#!/bin/bash

# Verificar se o sistema é Ubuntu
if ! grep -q "Ubuntu" /etc/os-release; then
  echo "Este script foi projetado para sistemas Ubuntu. Saindo..."
  exit 1
fi

# Verificar se o arquivo ~/.bashrc existe
if [ ! -f ~/.bashrc ]; then
  echo "O arquivo ~/.bashrc não foi encontrado. Criando um novo..."
  touch ~/.bashrc
fi

# Verificar se o Bash-completion está instalado
if ! dpkg -l | grep -q bash-completion; then
  echo "Instalando bash-completion..."
  sudo apt update
  sudo apt install bash-completion -y
fi

# Configurar o autocomplete do kubectl
echo "Configurando o autocomplete do kubectl..."
kubectl completion bash | sudo tee /etc/bash_completion.d/kubectl > /dev/null

# Adicionar aliases e suporte ao autocomplete
ALIASES_FILE=~/.kubectl_aliases

echo "Adicionando aliases e suporte ao autocomplete para kubectl..."

cat << 'EOF' > $ALIASES_FILE
# Alias para kubectl
alias k="kubectl"
alias kgp="kubectl get pods"
alias kgpw="kubectl get pods -o wide"
alias kgn="kubectl get nodes"
alias kgnw="kubectl get nodes -o wide"
alias kgns="kubectl get namespaces"
alias kgs="kubectl get svc"
alias kgsw="kubectl get svc -o wide"
alias kgd="kubectl get deployments"
alias kgdw="kubectl get deployments -o wide"
alias kdp="kubectl describe pod"
alias kds="kubectl describe svc"
alias kdd="kubectl describe deployment"
alias kdel="kubectl delete"
alias kdelp="kubectl delete pod"
alias kdels="kubectl delete svc"
alias kdeld="kubectl delete deployment"
alias ka="kubectl apply -f"
alias ke="kubectl edit"
alias kl="kubectl logs"
alias klf="kubectl logs -f"
alias kcn="kubectl config set-context --current --namespace"
alias kexec="kubectl exec -it"

# Alias para revisar os atalhos
alias khelp="echo 'Atalhos configurados:
  k      -> kubectl
  kgp    -> kubectl get pods
  kgpw   -> kubectl get pods -o wide
  kgn    -> kubectl get nodes
  kgnw   -> kubectl get nodes -o wide
  kgns   -> kubectl get namespaces
  kgs    -> kubectl get svc
  kgsw   -> kubectl get svc -o wide
  kgd    -> kubectl get deployments
  kgdw   -> kubectl get deployments -o wide
  kdp    -> kubectl describe pod
  kds    -> kubectl describe svc
  kdd    -> kubectl describe deployment
  kdel   -> kubectl delete
  kdelp  -> kubectl delete pod
  kdels  -> kubectl delete svc
  kdeld  -> kubectl delete deployment
  ka     -> kubectl apply -f
  ke     -> kubectl edit
  kl     -> kubectl logs
  klf    -> kubectl logs -f
  kcn    -> kubectl config set-context --current --namespace
  kexec  -> kubectl exec -it
'"
EOF

# Adicionar ao .bashrc
if ! grep -q "source ~/.kubectl_aliases" ~/.bashrc; then
  echo "source ~/.kubectl_aliases" >> ~/.bashrc
fi

# Recarregar configurações do Bash
echo "Recarregando configurações do Bash..."
source ~/.bashrc

echo "Configuração concluída! Teste os comandos com os aliases, como 'kgp', e use 'khelp' para revisar os atalhos."
