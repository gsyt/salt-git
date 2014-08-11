{%- set os = salt['grains.get']('os') -%}
{%- set pkgdefault = { 
  'Ubuntu': 'git', 
  'CentOS': 'git' } -%}
{%- set pkgname = salt['pillar.get']('git:pkg:' ~ os, pkgdefault[os]) -%}

git.installed:
  pkg.latest:
    - name: {{ pkgname }}
