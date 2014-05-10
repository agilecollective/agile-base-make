; Base make file

api = 2
core = 7.x

projects[] = drupal

; Libraries ===================================================================

libraries[ckeditor][download][type]= "get"
libraries[ckeditor][download][url] = "http://ckeditor.com/builder/download/b7dd5107ff15df0a25c7a52a2d1bdb04"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][destination] = "libraries"

libraries[ckeditor][download][type]= "get"
libraries[ckeditor][download][url] = "http://underscorejs.org/underscore-min.js"
libraries[ckeditor][directory_name] = "underscore"
libraries[ckeditor][destination] = "libraries"

libraries[ckeditor][download][type]= "get"
libraries[ckeditor][download][url] = "http://backbonejs.org/backbone-min.js"
libraries[ckeditor][directory_name] = "backbone"
libraries[ckeditor][destination] = "libraries"

; Modules =====================================================================

; Admin
projects[admin_menu][subdir] = contrib
projects[adminimal_admin_menu][subdir] = contrib
projects[module_filter][subdir] = contrib
projects[fpa][subdir] = contrib
projects[simplify][subdir] = contrib
projects[admin_views][subdir] = contrib
projects[views_bulk_operations][subdir] = contrib
projects[masquerade][subdir] = contrib
projects[coffee][subdir] = contrib

; Development
projects[devel][subdir] = contrib
projects[backup_migrate][subdir] = contrib
projects[features][subdir] = contrib
projects[strongarm][subdir] = contrib
projects[diff][subdir] = contrib
projects[environment_indicator][subdir] = contrib
projects[maillog][subdir] = contrib
projects[security_review][subdir] = contrib
projects[jquery_update][subdir] = contrib

; Structure
projects[ctools][subdir] = contrib
projects[context][subdir] = contrib
projects[views][subdir] = contrib
projects[libraries][subdir] = contrib
projects[context_omega][subdir] = contrib

; HTML5 & theme related
projects[html5_tools][subdir] = contrib
projects[elements][subdir] = contrib

; All other
projects[pathauto][subdir] = contrib
projects[webform][subdir] = contrib
projects[token][subdir] = contrib
projects[link][subdir] = contrib
projects[email][subdir] = contrib
projects[date][subdir] = contrib
projects[entity][subdir] = contrib
projects[entityreference][subdir] = contrib
projects[metatag][subdir] = contrib
projects[xmlsitemap][subdir] = contrib
projects[ds][subdir] = contrib
projects[transliteration][subdir] = contrib
projects[menu_block][subdir] = contrib
projects[ckeditor][subdir] = contrib
projects[edit][subdir] = contrib
projects[linkit][subdir] = contrib
projects[honeypot][subdir] = contrib

; Media
projects[media] = 2.x-dev
projects[media][subdir] = contrib
projects[file_entity] = 2.x-dev
projects[file_entity][subdir] = contrib

; Themes ======================================================================

; We use the adminimal theme for the admin section
projects[adminimal_theme][type] = "theme"
projects[adminimal_theme][subdir] = "contrib"

; We also have a child theme for adminimal which contains overrides or
; improvements for the back end theme.
projects[ac_adminimal][download][type] = "git"
projects[ac_adminimal][download][url] = "git@gitlab.agile.coop:ac_adminimal.git"
projects[ac_adminimal][type] = "theme"
projects[ac_adminimal][download][branch] = "master"
projects[ac_adminimal][subdir] = "custom"

; Omega is at the top of the theme chain.
projects[omega][type] = "theme"
projects[omega][subdir] = "contrib"

; Our parent base theme which in turn is based on Omega 4.
projects[ac_base][download][type] = "git"
projects[ac_base][download][url] = "git@gitlab.agile.coop:ac_base.git"
projects[ac_base][type] = "theme"
projects[ac_base][download][branch] = "master"
projects[ac_base][subdir] = "custom"

; Install Profile =============================================================

projects[agilebase][type] = "profile"
projects[agilebase][download][type] = "git"
projects[agilebase][download][url] = "git@gitlab.agile.coop:agile-base.git"
projects[agilebase][download][branch] = "master"
