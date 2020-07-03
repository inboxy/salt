install_apache:
  pkg.latest:
    - name: apache2
    - name: sqlite3

make sure apache is running:
  service.running:
  - name: apache2
  - enable: True
  - requrie:
    - pkg: install_apache

