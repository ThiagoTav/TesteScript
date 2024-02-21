## Descrição

Este repositório contém um script para automatizar o provisionamento da infraestrutura necessária para monitoramento de métricas utilizando InfluxDB v2, Grafana e Telegraf. O script utiliza Docker Compose para orquestrar os contêineres necessários.

## Pré-requisitos

- Docker instalado na máquina
- Acesso de superusuário para execução do script (`sudo`)

## Como usar

1. Dê permissão de execução ao script:
    ```bash
    sudo chmod +x script.sh
    ```

2. Execute o script:
    ```bash
    sudo ./script.sh
    ```

3. Após a execução do script, entre no InfluxDB e adicione um TOKEN com todas as permissões.

4. Copie o TOKEN gerado, pois ele não será exibido novamente.

5. Vá para a pasta "Telegraf.conf" e cole o TOKEN na parte apropriada do arquivo.

6. Altere o IP da máquina virtual conforme necessário no arquivo Telegraf.conf.

7. Reinicie o contêiner Docker Compose:
    ```bash
    docker-compose restart
    ```

8. O Telegraf agora estará coletando métricas da VM. Você pode acessar o Grafana para fazer a conexão com o InfluxDB e criar gráficos.

## Notas

- Certifique-se de ter as permissões adequadas para executar o script.
- Após a execução do script, você precisará configurar manualmente o TOKEN no arquivo Telegraf.conf.
- Lembre-se de reiniciar o contêiner Docker Compose após as alterações no arquivo de configuração do Telegraf.
