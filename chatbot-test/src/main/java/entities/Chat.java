/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

/**
 *
 * @author Admin
 */
public class Chat {
    private String uInput;
    private String botMsg;

    public Chat(){
        uInput="";
        botMsg="";
    }
    
    public Chat(String uInput, String botMsg){
        this.uInput = uInput;
        this.botMsg = botMsg;
    }
    
    public String getuInput() {
        return uInput;
    }

    public void setuInput(String uInput) {
        this.uInput = uInput;
    }

    public String getBotMsg() {
        return botMsg;
    }

    public void setBotMsg(String botMsg) {
        this.botMsg = botMsg;
    }
    
    
}
