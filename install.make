; Base make file

api = 2
core = 7.x

projects[] = drupal

; Libraries ===================================================================

libraries[ckeditor][download][type]= "get"
libraries[ckeditor][download][url] = "http://ckeditor.com/builder/download/b7dd5107ff15df0a25c7a52a2d1bdb04"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][destination] = "libraries"

libraries[underscore][download][type]= "get"
libraries[underscore][download][url] = "https://github.com/jashkenas/underscore/archive/1.6.0.zip"
libraries[underscore][directory_name] = "underscore"
libraries[underscore][destination] = "libraries"

libraries[backbone][download][type]= "get"
libraries[backbone][download][url] = "https://github.com/jashkenas/backbone/archive/1.1.2.zip"
libraries[backbone][directory_name] = "backbone"
libraries[backbone][destination] = "libraries"

libraries[backbone][download][type]= "get"
libraries[modernizr][download][url] = "drush make https://raw.githubusercontent.com/agilecollective/agile-base-make/master/modernizr.min.js"
libraries[backbone][directory_name] = "modernizr"
libraries[backbone][destination] = "libraries"

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
projects[navbar] = 1.x-dev
projects[navbar][subdir] = contrib

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
projects[modernizr][subdir] = contrib

; Structure
projects[ctools][subdir] = contrib
projects[context][subdir] = contrib
projects[views][subdir] = contrib
projects[libraries][subdir] = contrib
projects[context_omega][subdir] = contrib
projects[field_group][subdir] = contrib
projects[responsive_tables] = 7.x-2.x-dev
projects[responsive_tables][subdir] = contrib

; HTML5 & theme related
projects[html5_tools] = 1.x-dev
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
projects[linkit] = 3.x-dev
projects[linkit][subdir] = contrib
projects[honeypot][subdir] = contrib
projects[better_formats][subdir] = contrib

; Media
projects[media] = 2.x-dev
projects[media][subdir] = contrib
projects[file_entity] = 2.x-dev
projects[file_entity][subdir] = contrib
projects[ckeditor_media][subdir] = contrib

; Patches =====================================================================

; Patch the edit module to fix front end editing of node forms.
projects[edit][patch][] = "https://drupal.org/files/issues/node_edit_js_error-2264607-2.patch"
; Provide nice hidpi icons for linkit in ckeditor
projects[linkit][patch][] = "https://drupal.org/files/issues/hidpi_ckeditor_icons-2280511-1.patch"

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
projects[omega][version] = "4.x-dev"

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
