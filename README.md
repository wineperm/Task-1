# Task-1

# Описание проекта

Этот проект представляет собой автоматизированное развертывание Nginx веб-сервера с использованием Ansible и Docker. Проект включает в себя два основных компонента: установку и настройку Nginx на сервере и развертывание Nginx в Docker-контейнере.

## Структура проекта

```
.
├── ansible
│   ├── roles
│   │   ├── nginx
│   │   │   ├── tasks
│   │   │   │   └── main.yml
│   │   │   ├── templates
│   │   │   │   └── index.html.j2
│   │   │   └── vars
│   │   │       └── main.yml
│   │   └── nginx-docker
│   │       ├── tasks
│   │       │   └── main.yml
│   │       ├── templates
│   │       │   └── KLS_netology_12.07.2004.jpeg
│   │       └── vars
│   │           └── main.yml
│   └── site.yml
├── inventory
│   └── hosts.ini
├── Dockerfile
├── README.md
└── .github
    └── workflows
        ├── deploy-nginx.yml
        └── build-and-deploy-docker.yml
```

## Описание компонентов

### Ansible

#### Роли

1. **nginx**
   - **tasks/main.yml**: Основные задачи для установки и настройки Nginx.
   - **templates/index.html.j2**: Шаблон для кастомизации главной страницы Nginx.
   - **vars/main.yml**: Переменные для роли Nginx.

2. **nginx-docker**
   - **tasks/main.yml**: Основные задачи для установки Docker и развертывания Nginx в Docker-контейнере.
   - **templates/KLS_netology_12.07.2004.jpeg**: Изображение, используемое на главной странице Nginx.
   - **vars/main.yml**: Переменные для роли Nginx Docker.

#### Плейбуки

- **site.yml**: Основной плейбук, который включает роли `nginx` и `nginx-docker`.

### Docker

- **Dockerfile**: Определяет образ Docker для Nginx с кастомной конфигурацией и изображением.

### Inventory

- **hosts.ini**: Файл инвентаря, содержащий список серверов и переменные для подключения.

### GitHub Actions

- **deploy-nginx.yml**: Workflow для развертывания Nginx на сервере.
- **build-and-deploy-docker.yml**: Workflow для сборки и развертывания Docker-контейнера с Nginx.

## Установка и использование

### Установка Nginx на сервере

```bash
ansible-playbook -i inventory/hosts.ini ansible/site.yml --tags nginx
```

### Развертывание Nginx в Docker-контейнере

```bash
ansible-playbook -i inventory/hosts.ini ansible/site.yml --tags nginx-docker
```

### Автоматизация с помощью GitHub Actions

- **deploy-nginx.yml**: Автоматически развертывает Nginx на сервере при запуске workflow.
- **build-and-deploy-docker.yml**: Автоматически собирает и развертывает Docker-контейнер с Nginx при запуске workflow.

## Заключение

Этот проект предоставляет гибкость в развертывании Nginx как на физических серверах, так и в Docker-контейнерах. С использованием Ansible и GitHub Actions процесс развертывания становится автоматизированным и упрощенным.
