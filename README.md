# Docker quick setup

Este projeto tem como objetivo simplicar o setup do docker e ferramentas auxiliares como Docker Compose, Docker Cleanup em distribuições Linux. Originalmente desenvolvido para Ubuntu 16.04, mas pode ser utilizado em outras distribuições compatíveis.

#### Instalação completa:
```
curl -sSL https://github.com/codions/docker-setup/raw/master/install.sh | bash
```

#### Caso queira instalar apenas o Docker Cleanup:
```
curl -L https://github.com/codions/docker-setup/raw/master/cleanup.sh -o /usr/local/bin/docker-cleanup && chmod +x /usr/local/bin/docker-cleanup
```


#### Para desinstalar completamente:
```
curl -sSL https://github.com/codions/docker-setup/raw/master/uninstall.sh | bash
```


## Contribuição

1. Fork este repositório!
2. Crie sua feature a partir da branch **develop**: `git checkout -b feature/my-new-feature`
3. Escreva e comente seu código.
4. Commit suas alterações: `git commit -am 'Add some feature'`
5. Faça um `push` para a branch: `git push origin feature/my-new-feature`
6. Faça um `pull request` para a branch **develop**

## Créditos

[Fábio Assunção](https://github.com/fabioassuncao) e todos os [contribuidores](https://github.com/codions/docker-setup/graphs/contributors).

## Licença

Licenciado sob a licença MIT.