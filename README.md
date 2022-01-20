# Deploy do Amundsen na AWS com Terraform

O Amundsen é um mecanismo de descoberta de dados e metadados para melhorar a produtividade de analistas de dados, cientistas de dados e engenheiros ao interagir com dados. Ele faz isso hoje indexando recursos de dados (tabelas, painéis, fluxos, etc.). Pense nisso como uma pesquisa de dados no Google. O projeto tem o nome do explorador norueguês Roald Amundsen, a primeira pessoa a descobrir o Pólo Sul.

### Arquitetura
![alt text](https://github.com/cicerojmm/deployAmundsenTerraformAWS/blob/main/images/architecture-diagram.png?raw=true)

### Execução do Amundsen

A execução do Amundsen nesse projeto está baseada em Terraform e um EC2.

O Terraform faz a instalação automatica do Amundsen que pode ser acessado logo depois de sua execução através do DNS da EC2 na porta 5000.

A execução do Airflow de forma automática não está contemplada no script.

#### Iniciar e construir a infraestrutura
```sh
terraform init
```
```sh
terraform apply --var-file="dev.tfvars"
```

#### Destruir toda a infraestrutura
```sh
terraform destroy --var-file="dev.tfvars"
```

### Referências

Amundsen: https://www.amundsen.io/

Airflow: https://airflow.apache.org/
