$(function () {
   // $('#depositbtn').click(newDeposit);
    alert("Sign up page");
    $('#signup').click(ajaxCallForNewUser);

});

function ajaxCallForNewUser(){
    var useName = $('#userName').val();
    var email = $('#email').val();
    var balance = $('#name').val();
    var password = $('#user_password').val();
    var newUser = {username:useName, email:email,account: {balance:balance},password:password};

    $.ajax("/newUser", { "type": "POST" ,data:{username:useName, email:email,account: {balance:balance},password:password}})
        .done(processData)
        .fail(ajaxFailure);
   // $.post("/newUser",{ newUser: JSON.stringify(newUser)}, processData, "json");


    function processData(data) {
        alert("Successfully created");

    }

    function ajaxFailure(data) {
        alert("Please try again");

    }
}