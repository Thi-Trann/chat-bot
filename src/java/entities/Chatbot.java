/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author SE151515 Cao Trong Hieu
 */
@Entity
@Table(name = "Chatbot")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Chatbot.findAll", query = "SELECT c FROM Chatbot c")
    , @NamedQuery(name = "Chatbot.findById", query = "SELECT c FROM Chatbot c WHERE c.id = :id")
    , @NamedQuery(name = "Chatbot.findByContent", query = "SELECT c FROM Chatbot c WHERE c.content = :content")
    , @NamedQuery(name = "Chatbot.findByScript", query = "SELECT c FROM Chatbot c WHERE c.script = :script")})
public class Chatbot implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "content")
    private String content;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "script")
    private String script;

    public Chatbot() {
    }

    public Chatbot(Integer id) {
        this.id = id;
    }

    public Chatbot(Integer id, String content, String script) {
        this.id = id;
        this.content = content;
        this.script = script;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getScript() {
        return script;
    }

    public void setScript(String script) {
        this.script = script;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Chatbot)) {
            return false;
        }
        Chatbot other = (Chatbot) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.Chatbot[ id=" + id + " ]";
    }
    
}
