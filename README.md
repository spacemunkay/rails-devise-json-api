# About
# Postgres 9.2 Mac OSX Install
1. Install homebrew `ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"`
1. `brew install postgres`
1. First time db initialization `initdb /usr/local/var/postgres -E utf8`
1. Start Postgres `pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start`
1. Create your PG user `createuser -d -P my_user`
1. Create your database `createdb -U my_user --owner=my_user my_database`
1. Create your test database `createdb -U my_user --owner=my_user my_database_test`

# License
MIT license (http://opensource.org/licenses/MIT)

<a href="http://madewithloveinbaltimore.org">Made with &hearts; in Baltimore</a>
