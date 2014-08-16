{% from "git/map.jinja" import git with context %}

git.installed:
  pkg.purged:
    - name: {{ git.package }}
