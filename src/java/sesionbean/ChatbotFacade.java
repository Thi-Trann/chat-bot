/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sesionbean;

import entities.Chatbot;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author SE151515 Cao Trong Hieu
 */
@Stateless
public class ChatbotFacade extends AbstractFacade<Chatbot> {

    @PersistenceContext(unitName = "chatbot1PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ChatbotFacade() {
        super(Chatbot.class);
    }
    
}
