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

libraries[modernizr][download][type]= "get"
libraries[modernizr][download][url] = "https://raw.githubusercontent.com/agilecollective/agile-base-make/master/modernizr.min.js"
libraries[modernizr][directory_name] = "modernizr"
libraries[modernizr][destination] = "libraries"

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
projects[link_css][subdir] = contrib

; Structure
projects[ctools][subdir] = contrib
projects[context][subdir] = contrib
projects[views][subdir] = contrib
projects[libraries][subdir] = contrib
projects[context_omega][subdir] = contrib
projects[field_group][subdir] = contrib
projects[responsive_tables][version] = 2.x-dev
projects[responsive_tables][subdir] = contrib

; HTML5 & theme related
projects[html5_tools][version] = 1.x-dev
projects[html5_tools][subdir] = contrib
projects[elements][subdir] = contrib
projects[picture][subdir] = contrib
projects[breakpoints][subdir] = contrib
projects[styleguide][subdir] = contrib
projects[block_class][subdir] = contrib

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
projects[ckeditor][version] = 1.x-dev
projects[ckeditor][subdir] = contrib
projects[quickedit][subdir] = contrib
projects[linkit][subdir] = contrib
projects[honeypot][subdir] = contrib
projects[better_formats][subdir] = contrib
projects[responsive_menu][version] = 1.x-dev
projects[responsive_menu][subdir] = contrib
projects[htmlawed][subdir] = contrib
projects[smart_trim][subdir] = contrib
projects[google_analytics][subdir] = contrib
projects[varnish][subdir] = contrib
projects[mollom][subdir] = contrib
projects[imageapi_optimize][subdir] = contrib
projects[pathologic][version] = 3.x-dev
projects[pathologic][subdir] = contrib
projects[publish_button][subdir] = contrib

; Media
projects[media][version] = 2.x-dev
projects[media][subdir] = contrib
projects[file_entity][version] = 2.x-dev
projects[file_entity][subdir] = contrib
projects[media_ckeditor][version] = 2.x-dev
projects[media_ckeditor][subdir] = contrib

; Patches =====================================================================

; Provide some pleasing hiDPI icons for media in ckeditor
projects[media_ckeditor][patch][] = "https://www.drupal.org/files/issues/hidpi_icon_for_ckeditor-2549407-2.patch"
; Patch quickedit for htmLawed support: 2341413
projects[quickedit][patch][] = "https://www.drupal.org/files/issues/add_a_type_for_htmlawed-2341413-1.patch"
; Patch the styleguide module to fix javascript
projects[styleguide][patch][] = "https://www.drupal.org/files/issues/1004246-9-styleguide-maintenance-page.patch"

; Themes ======================================================================

; We use the adminimal theme for the admin section
projects[adminimal_theme][type] = "theme"
projects[adminimal_theme][subdir] = "contrib"

; Omega is at the top of the theme chain.
projects[omega][type] = "theme"
projects[omega][subdir] = "contrib"
projects[omega][version] = "4.4"

; Our parent base theme which in turn is based on Omega 4.
projects[ac_base][download][type] = "git"
projects[ac_base][download][url] = "git@gitlab.agile.coop:agile/ac_base.git"
projects[ac_base][type] = "theme"
projects[ac_base][download][branch] = "feature/libsass"
projects[ac_base][subdir] = "custom"

; Install Profile =============================================================

projects[agilebase][type] = "profile"
projects[agilebase][download][type] = "git"
projects[agilebase][download][url] = "git@gitlab.agile.coop:agile/agile-base.git"
projects[agilebase][download][branch] = "master"
