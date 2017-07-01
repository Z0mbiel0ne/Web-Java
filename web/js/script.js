/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
 
    $(document).ready(function () {
        receive();
        setInterval("receive()", 1000);
     });
 
    function send() {
       
       var Datum = new Date();
       var Tag = Datum.getDate();
       var Monat = Datum.getMonth() + 1;
       var Jahr = Datum.getFullYear();
       var date = Tag + "." + Monat + "." + Jahr;
       
       var myJson = {};
       myJson["name"] = $("#chatname").val();
       myJson["datum"] = date;
       myJson["nachricht"] = $("textarea#chattext").val();
       
       var json = JSON.stringify(myJson)
       
        $.ajax({
        type: "PUT",
        url: "resources/shoutbox",
        data: JSON.stringify(myJson),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: "callback"});
    
        $("textarea#chattext").value = JSON.stringify(myJson);
        
        $("textarea#chattext").val("");
        //receive();
    }
    
    function receive() {   
       
       $.ajax({
            dataType: 'json',
            url: "resources/shoutbox",
            data: null,
            success: function(data) { createText(data);}
        });
       
    }
    
    function createText(data)
    {
        var list;
        var area = $('#chatlist');
        area.empty();
        for(var i = 0; i < data.length; i++) {
            var obj = data[i];
            var content = '<li>'+ obj.datum + " " + obj.name + " sagt: " + obj.nachricht + '</li>';
            area.append(content);
        }

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
            $("#counter").html(msg);
            $("#counter").css("color","red")
            document.getElementById("send").disabled = true;
        }
        else
        {
            $("#counter").html(msg);
            $("#counter").css("color","green")
        }
    }
