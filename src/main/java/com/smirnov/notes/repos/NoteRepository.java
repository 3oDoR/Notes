package com.smirnov.notes.repos;


import com.smirnov.notes.domain.Note;
import com.smirnov.notes.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

import javax.persistence.PreRemove;
import java.util.List;

public interface NoteRepository  extends JpaRepository<Note, Long> {
    List<Note> findByTypeMessage(String typeMessage);
    @PreRemove
    Long deleteById(long id);

}
