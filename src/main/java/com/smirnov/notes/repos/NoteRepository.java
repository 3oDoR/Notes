package com.smirnov.notes.repos;


import com.smirnov.notes.domain.Note;
import com.smirnov.notes.domain.User;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

import javax.persistence.PreRemove;
import java.util.List;

public interface NoteRepository  extends JpaRepository<Note, Long> {
    List<Note> findByTypeMessageAndUserId(String typeMessage, long id);
    @PreRemove
    Long deleteById(long id);

    Note getAllById(long id);

    List<Note> findByUserId(Long id);
}
