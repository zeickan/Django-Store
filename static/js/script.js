$(document).foundation();

$(document).ready(function(){

    
    $(".car").click(function(){
    
        var id = $(this).attr("rel");
        
        $.getJSON( jsonPath+'addItem?id='+id+'&callback=?' ,{},
                function(data) {
                    
                    if( data != undefined ){
        
                        if (data['result'] == "ok") {
                            var current = parseInt($("#current_basket").html())+1;
                            
                            $("#current_basket").html(current);
                        }
                        
                        /*$.each(data,function(i,item){
                            
                            alert(i + " - " + item);
                            
                        });*/
                    
                    }
                
            });        
        
        
    });
    
    
    
});