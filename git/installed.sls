{% from "git/map.jinja" import git with context %}

{% set package = {
  'upgrade': salt['pillar.get']('git:package:upgrade', False),
} %}

git.installed:
  pkg.{{ 'latest' if package.upgrade else 'installed' }}:
    - name: {{ git.package }}
