{%- set os = salt['grains.get']('os') -%}
{%- set pkgdefault = { 
  'Ubuntu': 'git', 
  'RedHat': 'git' } -%}
{%- set pkgname = salt['pillar.get']('git:pkg:' ~ os, pkgdefault[os]) -%}

git.installed:
  pkg.purged:
    - name: {{ pkgname }}
