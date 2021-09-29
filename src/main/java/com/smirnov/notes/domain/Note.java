package com.smirnov.notes.domain;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import javax.persistence.*;
import java.util.List;
import java.util.Objects;


@Entity
@Table(name = "note")
public class Note {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    @Column(name = "\"message\"")
    private String message;
    @Column(name = "type_message")
    private String typeMessage;

    @ElementCollection
    @CollectionTable(name="note_user", joinColumns=@JoinColumn(name="note_id"))
    private List<User> users;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getTypeMessage() {
        return typeMessage;
    }

    public void setTypeMessage(String type_message) {
        this.typeMessage = type_message;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Note note = (Note) o;
        return id == note.id;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
    private String username() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        return auth.getName();
    }
    @Override
    public String toString() {
        return "[" + username() + "] " + message;
    }
}
