/**
 * Created by chejingchi on 16/4/28.
 */
$(function () {
    $("#login-btn").on("click", function () {
        var login = {};
        login.username = $("#username").val();
        login.password = $("#password").val();
        $.ajax({
            url: loginUrl,
            type: "post",
            data: login,
            success: function (data) {
                if (data) {
                    location.href = base + "/gymManager/init";
                }
            }
        })
    })
})