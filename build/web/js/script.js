/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
 var count = 0;
 
    $(document).ready(function () {
        receive();
        setInterval("receive()", 2000);
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
       
        $.ajax({
        type: "PUT",
        url: "resources/shoutbox",
        data: JSON.stringify(myJson),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: "callback"});
        
        $("textarea#chattext").val("");
        $("#chatname").prop('disabled', true);
        check();
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
        var area = $('#chatlist');
        area.empty();
        for(var i = 0; i < data.length; i++) 
        {
            var obj = data[i];
            if(obj.name == $("#chatname").val())
            {
                if(i == data.length-1 && i > count)
                {
                    var content = '<li class="last" id="right" style="display: none">'+ obj.nachricht + " <u>" + obj.name + ": " + obj.datum + '</u></li>';
                    area.append(content);
                    $(".last").fadeIn(1000);
                    count = i;
                }
                else
                {
                    var content = '<li id="right">'+ obj.nachricht + " <u>" + obj.name + ": " + obj.datum + '</u></li>';
                    area.append(content);
                }
            }
            else
            {
                if(i == data.length-1 && i > count)
                {
                    var content = '<li class="last" id="left" style="display: none"><u>'+ obj.datum + " " + obj.name + "</u>: " + obj.nachricht + '</li>';
                    area.append(content);
                      $(".last").fadeIn(1000);
                      count = i;
                }
                else
                {
                    var content = '<li id="left"><u>'+ obj.datum + " " + obj.name + "</u>: " + obj.nachricht + '</li>';
                    area.append(content);
                }
            }
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
            $("textarea#chattext").css("border","3px solid");
            $("textarea#chattext").css("border-color","red");
            $("#counter").html(msg);
            $("#counter").css("color","red")
            document.getElementById("send").disabled = true;
        }
        else
        {
            $("textarea#chattext").css("border-width","1px");
            $("textarea#chattext").css("border-color","rgb(169, 169, 169)");
            $("#counter").html(msg);
            $("#counter").css("color","green")
        }
    }
