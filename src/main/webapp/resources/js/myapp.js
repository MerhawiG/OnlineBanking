$(function () {
    $('#depositbtn').click(newDeposit);
 //$('#signup').click(ajaxCallForNewUser);
});

function newDeposit() {
    // alert("deposit page");
    var newBalance = $('#balance').val();
   // var amount = {balance:newBalance};

    $.ajax("/deposit", { "type": "POST" ,data:{amount:newBalance}})
        .done(processData)
        .fail(ajaxFailure);
    // $.ajax("/deposit","type":"post",{amount: JSON.stringify(amount)},processData,"json");

}
function processData(data) {
    // alert("loaded");

    // console.log(data);
    // console.log(data.account.balance);
    // var x = JSON.parse(data);
    // alert(x);
    $('#display').val(data.account.balance);

}

function ajaxFailure(data) {
    console.log(data);
}
