/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 * @autor: Codigo A.M.
 */

function menuSelected(menuSelectedText)
{   
    var ban_in = false;
    $('.page-sidebar-menu').each(function(index,element){ 
        
        if(menuSelectedText.indexOf(element.id) !== -1){
            ban_in = true;
            $('.page-sidebar-menu > li').attr("class","nav-item");
            $('#'+element.id + '> li').attr("class","nav-item start active selected");
        }                        
    });    
    
    if(!ban_in){
        $('.page-sidebar-menu > li').attr("class","nav-item");
        $('#index > li').attr("class","nav-item start active selected");
    }
}
                


