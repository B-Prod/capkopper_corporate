; Drush Make file
;
; Use this file to build a full distribution including Drupal core and the
; "capKopper Corporate" distribution using the following command...
;
; drush --no-patch-txt make build-capkopper-corporate.make <target directory>

api = 2
core = 7.x

; Include the definition for how to build Drupal core directly, including
; patches.

includes[] = drupal-org-core.make

; Download the capKopper Corporate and recursively build all
; of its dependencies.

projects[capkopper_corporate][type] = profile
projects[capkopper_corporate][download][type] = git
projects[capkopper_corporate][download][url] = git@github.com:capKopper/capkopper_corporate.git
projects[capkopper_corporate][download][branch] = 7.x-1.x

# For local development.
;projects[capkopper_corporate][download][type] = local
;projects[capkopper_corporate][download][source] = ~/www/github/capkopper_corporate
