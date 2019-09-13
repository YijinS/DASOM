function startTakeCounsDiv (context) {  
   
    $.ajax({
       
        type : 'GET',
        url : context+"/getCounsDiv.do",
        dataType : 'html',
        success : function (data) {
            $("#dasom_couns").html(data);
        },
        error : function (e) {
              console.log(e);
        }

    });
}