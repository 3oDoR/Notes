package com.smirnov.notes.controller;


import com.smirnov.notes.domain.Note;
import com.smirnov.notes.domain.User;
import com.smirnov.notes.repos.NoteRepository;
import com.smirnov.notes.repos.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TaskListController {
    final
    NoteRepository noteRepository;
    final
    UserRepository userRepository;
    String table_column;

    public TaskListController(NoteRepository noteRepository, UserRepository userRepository) {
        this.noteRepository = noteRepository;
        this.userRepository = userRepository;
    }


    private String username() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String username = auth.getName();
        return username;
    }

    @GetMapping("/task_list")
    public String taskList(Model model) {
        Long userId = userRepository.findByUsername(username()).getId();


        model.addAttribute("notesToDo", noteRepository.findByTypeMessageAndUserId("ToDo", userId));
        model.addAttribute("notesDoing", noteRepository.findByTypeMessageAndUserId("Doing", userId));
        model.addAttribute("notesDone", noteRepository.findByTypeMessageAndUserId("Done", userId));


        return "task_list";
    }

    @PostMapping("/task_list")
    public String addNote(Note note, String typeMessage) {
        note.setTypeMessage(typeMessage);
        User byUsername = userRepository.findByUsername(username());
        note.setUser(byUsername);
        noteRepository.save(note);
        return "redirect:/task_list";
    }

    @DeleteMapping("/task_list")
    public String deletePost(Long id) {
        System.out.println("EEEEE");
        System.out.println(id);
        noteRepository.deleteById(id);

        return "redirect:/task_list";
    }


}
