﻿$(document).ready(function () {
    //templates click Button
    $("#at").on("click", function () {
        $("#abp").show();
        $("#amt").show();
        $("#gwg").show();
        $("#ece").show();
        $("#sma").show();
        $("#webe").show();
        $("#oth").show();
    });
    $("#ab").on("click", function () {
        $("#abp").show();
        $("#amt").hide();
        $("#gwg").hide();
        $("#ece").hide();
        $("#sma").hide();
        $("#webe").hide();
        $("#oth").hide();
    });
    $("#am").on("click", function () {
        $("#amt").show();
        $("#abp").hide();
        $("#gwg").hide();
        $("#ece").hide();
        $("#sma").hide();
        $("#webe").hide();
        $("#oth").hide();
    });
    $("#gw").on("click", function () {
        $("#gwg").show();
        $("#amt").hide();
        $("#abp").hide();
        $("#ece").hide();
        $("#sma").hide();
        $("#webe").hide();
        $("#oth").hide();
    });
    $("#ec").on("click", function () {
        $("#ece").show();
        $("#gwg").hide();
        $("#amt").hide();
        $("#abp").hide();
        $("#sma").hide();
        $("#webe").hide();
        $("#oth").hide();
    });
    $("#sm").on("click", function () {
        $("#ece").hide();
        $("#gwg").hide();
        $("#amt").hide();
        $("#abp").hide();
        $("#sma").show();
        $("#webe").hide();
        $("#oth").hide();
    });
    $("#ws").on("click", function () {
        $("#webe").show();
        $("#ece").hide();
        $("#gwg").hide();
        $("#amt").hide();
        $("#abp").hide();
        $("#sma").hide();
        $("#oth").hide();
    });
    $("#ot").on("click", function () {
        $("#oth").show();
        $("#webe").hide();
        $("#ece").hide();
        $("#gwg").hide();
        $("#amt").hide();
        $("#abp").hide();
        $("#sma").hide();
    });
    //Radio button work
    $("#monthly").on("click", function () {
        $("#chPara").val("5");
        $("#chParaText").text("/monthly");
    });
    $("#yearly").on("click", function () {
        $("#chPara").val("50");
        $("#chParaText").text('/yearly');
    });
    $("#Lifetime").on("click", function () {
        $("#chPara").val("550");
        $("#chParaText").text('/LifeTime');
    });
	
});
function viewText() {
    $("#viewImage").show();
} function hideText() {
    $("#viewImage").hide();
}
