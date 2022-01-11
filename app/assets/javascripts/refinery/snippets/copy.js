$(document).ready(function (e) {
  $('.copy_icon').click(function(e){
    e.preventDefault();
    var text = $(this).data('content');
    const elem = document.createElement('textarea');
    elem.value = text;
    document.body.appendChild(elem);
    elem.select();
    document.execCommand('copy');
    document.body.removeChild(elem);
    $(this).addClass('active');
    setTimeout(() => {
      $(this).removeClass('active');
    }, 2000);
  });
})
