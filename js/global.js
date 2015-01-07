/* 
 * Created on : 4 déc. 2014, 20:33:36
 * Author     : Pipe My Fork - Nuit de l'info 2014
 */

$( document ).ready(function(){
    $(".container").fadeOut();
    $("#header-background").css("-webkit-animation", "header-background 2s linear alternate"); //Chrome, Safari, Opera
    $("#header-background").css("animation", "header-background 2s linear alternate"); //Standard syntax
    $("header ul li").css("-webkit-animation", "header-buttons 2s linear alternate"); //Chrome, Safari, Opera
    $("header ul li").css("animation", "header-buttons 2s linear alternate"); //Standard syntax
    $("#footer-background").css("-webkit-animation", "footer-background 2s linear alternate"); //Chrome, Safari, Opera
    $("#footer-background").css("animation", "footer-background 2s linear alternate"); //Standard syntax
    $(".container").delay(1500).fadeIn();
});