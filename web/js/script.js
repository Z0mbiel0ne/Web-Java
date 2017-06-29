/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
 
    function send() {
       $.ajax({
        type: "PUT",
        url: "ressource/shoutbox?name=" + $("#chatname").val() + "&datum=" + "23.07.1997" + "&nachricht=" + $("textarea#chattext").val(),
        data: null,
        success: "callback"});
    }
    
    $("textarea#chattext").on("keyup", function() 
    { 
        check(); 
    });
    $("#chatname").on("keyup", function() 
    { 
        check(); 
    });
    function check()
    {
        if ($("textarea#chattext").val().length > 0 && $("#chatname").val().length > 0)
        {
            document.getElementById("send").disabled = false;
        } else
        {
            document.getElementById("send").disabled = true;
        }

        var msg = 150;
        msg = msg - $("textarea#chattext").val().length;
        if (msg <= 0)
        {
            alert("Zu viele Zeichen");
        }
        else
        {
            $("#counter").html(msg);
        }
    }
