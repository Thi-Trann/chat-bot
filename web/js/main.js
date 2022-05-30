/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
const popup = document.querySelector('.chat-popup');
const chatBtn = document.querySelector('.chat-btn');
const closeBtn = document.querySelector('.close-btn');
const submitBtn = document.querySelector('.submit-btn');
const chatArea = document.querySelector('.chat-area');

//Display chat box
$(popup).hide();

$(chatBtn).click(function () {
    $(popup).toggle("swing");
});

$(closeBtn).click(function () {
    $(popup).hide();
});

//Send messages
function eraseText(){
    document.getElementById("txtmsg").value = "";
}

$(submitBtn).click(function () {
    var userInput = $("#txtmsg").val();
    if(userInput === ""){
        return;
    }else{
        var myMsg = `
        <div class="out-msg">
        <span class="my-msg">${userInput}</span>
        </div>`;
    
    chatArea.insertAdjacentHTML("beforeend", myMsg);
    this.scrollIntoView(false);
    userInput = "";
    eraseText();
    chatArea.scrollIntoView(true);
    }
});

//Auto message scroll

