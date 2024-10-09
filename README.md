# Proyecto Relación 1 a N

* Ruby version : 3.3.3
* Base de Datos local : PostgreSQL

Debe agregarse archivo config/database.yml
```
default: &default
  adapter: postgresql
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  timeout: 5000

development:
  <<: *default
  database: {NOMBRE_BD_LOCAL}_rails
  username:{USER_BD_LOCAL}
  password: {PASSWORD_BD_LOCAL}
  host: localhost
  port: 5432

test:
  <<: *default
  database: {NOMBRE_BD_LOCAL}_rails_test
  username:{USER_BD_LOCAL}
  password: {PASSWORD_BD_LOCAL}
  host: localhost

production:
  <<: *default
  database: {NOMBRE_BD_LOCAL}_rails_production
  username:{USER_BD_LOCAL}
  password: <%= ENV["{NOMBRE_BD_LOCAL}_rails_DATABASE_PASSWORD"] %>
```
- crear BD local y hacer migracion de las tablas:

1 `rails db:create`

2 `rails db:migrate`

3 `rails db:seeds`

- poner en funcionamiento el servidor local:

`rails s`

- Acceder vía navegador al localhost: `http://127.0.0.1:3000/`

## [localhost](http://127.0.0.1:3000)