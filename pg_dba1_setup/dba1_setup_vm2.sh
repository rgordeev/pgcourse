wget https://ftp.postgresql.org/pub/source/v9.4.4/postgresql-9.4.4.tar.gz
tar xzf postgresql-9.4.4.tar.gz
cd  postgresql-9.4.4/
./configure
make world
sudo make install
cd contrib/oid2name
sudo make install
cd ../pgcrypto
sudo make install

sudo adduser postgres
sudo mkdir /usr/local/pgsql/data
sudo chown postgres /usr/local/pgsql/data

sudo bash -c "echo 'export PATH=/usr/local/pgsql/bin:$PATH' >> /home/postgres/.profile"
sudo bash -c "echo 'export PGDATA=/usr/local/pgsql/data' >> /home/postgres/.profile"

sudo -i -u postgres pg_ctl initdb -o "-k"
