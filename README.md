# Experimentação BGP: Um Estudo de Caso no Backbone da RNP

Este projeto de graduação consiste na implementação de ambiente para estudo e aplicação de conceitos do protocolo BGP, tais como políticas de importação e exportação, tomada de decisão para escolha da melhor rota e manipulação de atributos. O ambiente é formado por quatro sistemas autônomos que se comunicam via BGP em um ou mais postos de conexão, e utilizam o protocolo OSPF para o rotemanto interno.

---
Ferramentas necessárias
---
- Linux Network Namespace (Plano de dados).
- BIRD (Plano de controle).
- traceroute (Verificar os saltos na comunicação entre roteadores).
- fping (Verificar as redes conectadas na nossa topologia).	

---
Como instalar as ferramentas utilizadas
---
- BIRD
	- apt-get install bird
- traceroute
	- apt-get install traceroute
- fping	 
	- apt-get install fping
  
---
Como executar o projeto
---
Para executar o projeto basta executar o scrip "rnp.sh", porém antes da execução desse scrip, altere o campo do atributo "PATHWAY" do arquivo "rnp.sh" para: 
```shell
"$PATHWAY/home/(nome_do_computador)/(pasta_do_download_do_projeto).
```
---
Como visualizar as tabelas de roteamento dos roteadores
---
A tabela de roteamento de um roteador pode ser visualisada acessando a pasta "/tmp/(roteador)/var/run", utilizando o terminal de comando, e executar com comando "birdc -s bird.ctl". Em que podemos visualizar os resultados das configurações implantadas no roteador.
  
---
Utilizando o traceroute e fping
---
Para verificar o caminho de uma rede até a outra nós utilizamos o comando: 
```shell
"ip netns exec (roteador) traceroute -s (endereço_de_origem) (endereço_de_destino)" 
```
Já para verificars se o endereço de destino está conectado com uma determinada rede (rede de origem). Nós utilizamos o comando:  
```shell
"ip netns exec (roteador) fping -S (endereço_de_origem) (endereço_de_destino)"
```

---
Autor
---
Gilson Gabriel Zozias de Santana - gilsongabr@gmail.com

---
Orientador
---
Prof. Ronaldo Alves Ferreira - UFMS.

---
Licenças
---
Eu, Gilson Gabriel renuncio todos os direitos autorais à este projeto.
