$(document).ready(function() { 
    $("#addcollect").click(function() { 
        var ctrl = (navigator.userAgent.toLowerCase()).indexOf('mac') != -1 ? 'Command/Cmd' : 'CTRL'; 
        if (document.all){ 
          window.external.addFavorite('http://www./ruyicai.com','如意彩'); 
          }else if (window.sidebar){ 
         window.sidebar.addPanel('如意彩', 'http://www./ruyicai.com', ""); 
       }else { 
              alert('您可以尝试通过快捷键' + ctrl + ' + D 加入到收藏夹~'); 
       } 
    });    
});

