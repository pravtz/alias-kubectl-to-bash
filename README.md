# 🚀 **Kubectl Turbo Mode** 🐳  
**Transforme sua experiência com o kubectl em uma verdadeira dança dos dedos! 💃🕺**

Bem-vindo ao **Kubectl Turbo Mode**, o script que vai dar aquele boost de produtividade no seu dia-a-dia com Kubernetes. Com uma combinação de aliases inteligentes e autocomplete, você vai comandar clusters como um maestro regendo uma orquestra. 🎼🎻

---

## **🌟 Motivação**  
Por que gastar 10 segundos digitando comandos enormes quando você pode fazer isso em 2 segundos com um simples alias? 🤔  
A vida já é difícil o suficiente (sim, estou falando daqueles pods que *sempre* crasham 😩). Por isso, criamos este script: para te poupar tempo, energia e frustração enquanto você domina seus clusters como um Jedi do Kubernetes. ⚔️✨  

---

## **📥 Instalação**  

Siga este passo-a-passo simples e em poucos minutos você estará pronto para impressionar sua equipe:  

1. Clone este repositório:  
   ```bash
   git clone https://github.com/pravtz/alias-kubectl-to-bash.git
   cd alias-kubectl-to-bash
   ```

2. Torne o script executável:  
   ```bash
   chmod +x setup-kubectl-aliases.sh
   ```

3. Execute o script:  
   ```bash
   ./setup-kubectl-aliases.sh
   ```  

E pronto! 🎉 Você já está equipado para brilhar.  

---

## **🛠️ Como Usar**  

### **1. Use os aliases mágicos**  
Aqui estão todos os atalhos configurados para você. É só digitar e apertar Enter!  

| **Alias** | **Comando**                                         | **O que faz**                                                |
|-----------|-----------------------------------------------------|-------------------------------------------------------------|
| `k`       | `kubectl`                                          | Atalho básico para o kubectl. 🛠️                           |
| `kgp`     | `kubectl get pods`                                 | Lista todos os pods no namespace atual. 📋                  |
| `kgpw`    | `kubectl get pods -o wide`                         | Lista os pods com informações extras. 🔍                    |
| `kgn`     | `kubectl get nodes`                                | Lista os nodes do cluster. 🖥️                               |
| `kgnw`    | `kubectl get nodes -o wide`                        | Lista nodes com informações extras. 🤓                      |
| `kgns`    | `kubectl get namespaces`                           | Lista todos os namespaces. 🌌                               |
| `kgs`     | `kubectl get svc`                                  | Lista os serviços no namespace atual. 📡                   |
| `kgsw`    | `kubectl get svc -o wide`                          | Lista serviços com detalhes adicionais. 🔎                 |
| `kgd`     | `kubectl get deployments`                          | Lista todos os deployments no namespace atual. 📦           |
| `kgdw`    | `kubectl get deployments -o wide`                  | Lista deployments com detalhes extras. 🧐                   |
| `kdp`     | `kubectl describe pod`                             | Mostra detalhes de um pod específico. 🔬                   |
| `kds`     | `kubectl describe svc`                             | Mostra detalhes de um serviço específico. 📖               |
| `kdd`     | `kubectl describe deployment`                      | Mostra detalhes de um deployment específico. 📑            |
| `kdel`    | `kubectl delete`                                   | Deleta qualquer recurso. 💣                                 |
| `kdelp`   | `kubectl delete pod`                               | Deleta um pod específico. 💥                                |
| `kdels`   | `kubectl delete svc`                               | Deleta um serviço específico. 🗑️                           |
| `kdeld`   | `kubectl delete deployment`                        | Deleta um deployment específico. 🔨                        |
| `ka`      | `kubectl apply -f`                                 | Aplica arquivos de configuração YAML. 📝                   |
| `ke`      | `kubectl edit`                                     | Edita um recurso diretamente no editor configurado. ✍️     |
| `kl`      | `kubectl logs`                                     | Mostra os logs de um pod. 📜                                |
| `klf`     | `kubectl logs -f`                                  | Segue os logs de um pod em tempo real. 📡                   |
| `kcn`     | `kubectl config set-context --current --namespace` | Altera o namespace atual no contexto. 🚀                   |
| `kexec`   | `kubectl exec -it`                                 | Acessa interativamente o terminal de um container. 🚪       |

### **2. Quer ver todos os atalhos?**  
Use o comando especial:  
```bash
khelp
```  
E uma lista completa dos aliases será exibida para você. 📝  

---

## **🎉 Por que você vai amar?**  

1. **Economia de tempo absurda:** Faça mais em menos tempo, sem digitar comandos gigantes.  
2. **Produtividade decolar:** Menos erros ao digitar comandos (sim, é o fim dos typos no `kubectl get`).  
3. **Divertido e eficiente:** Transforme tarefas repetitivas em algo automático e divertido.  

---

## **🤝 Contribua com o projeto**  

Tem ideias para novos aliases ou melhorias? Sinta-se à vontade para abrir uma issue ou enviar um pull request.  

---

## **🦸 Feito para DevOps como você!**  

Seja você um iniciante no Kubernetes ou um ninja dos clusters, este script é para você. Aproveite a viagem, e lembre-se: com grandes aliases vêm grandes responsabilidades. 🕷️💪  

---

**🚀 Bora dominar o mundo dos clusters juntos!**  
Made with 💙 by [Ederson Pravtz](https://github.com/pravtz) e a comunidade Kubernetes.  