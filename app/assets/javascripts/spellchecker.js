$(document).on('ready page:load', function() {
  copySpellHandler();
});

function copySpellHandler() {
  $('body#spellchecker_controller')
  .on('click', '.clipboard', function(){
    var validChrome = ( navigator.userAgent.match(/Chrom(e|ium)\/([0-9]+)\./) && parseInt(navigator.userAgent.match(/Chrom(e|ium)\/([0-9]+)\./)[2]) >= 42);
    var validBrowser = ( document.queryCommandSupported("copy") || validChrome );

    $(this).closest('.form-group').find('input').select();
    if ( validBrowser ) {
      document.execCommand('copy');
      $(this).closest('[data-toggle="popover"]').popover('show');
    } else {
      alert('Please press Ctrl/Cmd+C to copy');
    }
  }).on('shown.bs.popover', '.clipboard', function(){
    var sel = $(this);
    setTimeout(function () {
      sel.closest('[data-toggle="popover"]').popover('hide');
    }, 2500);
  });
}
