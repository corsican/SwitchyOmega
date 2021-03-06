this.UglifyJS_NoUnsafeEval = true
$script 'lib/angular-loader/angular-loader.min.js',
  'angular-loader'
$script 'lib/jquery/jquery.min.js', 'jquery'
$script 'js/omega_pac.min.js', 'omega-pac'
$script 'lib/FileSaver/FileSaver.js', 'filesaver'
$script 'lib/blob/Blob.js', 'blob'
$script 'lib/spin.js/spin.js', ->
  $script 'lib/ladda/ladda.min.js', ->
    $script.ready ['angular-loader'], ->
      $script 'lib/angular-ladda/angular-ladda.min.js', 'angular-ladda'

$script.ready ['angular-loader'], ->
  angular.module 'omega', ['ngLocale', 'ngAnimate', 'ngSanitize',
    'ui.bootstrap', 'ui.router', 'ngProgress', 'ui.sortable',
    'angularSpectrumColorpicker', 'ui.validate', 'angular-ladda', 'omegaTarget',
    'omegaDecoration']
  $script.ready ['omega-pac'], ->
    $script 'js/omega.js', 'omega'
  $script([
    'js/omega_target_web.js'
    'js/omega_decoration.js'
    'lib/angular-animate/angular-animate.min.js'
    'lib/angular-bootstrap/ui-bootstrap-tpls.min.js'
    'lib/angular-i18n/angular-locale_en-us.js'
    'lib/ngprogress/ngProgress.min.js'
    'lib/angular-ui-sortable/sortable.min.js'
    'lib/angular-ui-utils/validate.min.js'
    'lib/jsondiffpatch/jsondiffpatch.min.js'
    'lib/angular-spectrum-colorpicker/angular-spectrum-colorpicker.min.js'
  ], 'omega-deps')
$script.ready ['jquery'], ->
  $script 'lib/jquery-ui-1.10.4.custom.min.js', 'jquery-ui'
  $script 'lib/spectrum/spectrum.js', 'spectrum'

$script.ready ['angular-loader', 'jquery'], ->
  $script 'lib/angular/angular.min.js', 'angular'

$script.ready ['angular'], ->
  $script 'lib/angular-ui-router/angular-ui-router.js', 'angular-ui-router'
  $script 'lib/angular-sanitize/angular-sanitize.min.js', 'angular-sanitize'

$script.ready ['angular', 'omega', 'omega-deps', 'angular-ui-router',
  'jquery-ui', 'spectrum', 'filesaver', 'blob', 'angular-ladda',
  'angular-sanitize'], ->
  angular.bootstrap document, ['omega']
