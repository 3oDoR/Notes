package com.smirnov.notes.repos;


import com.smirnov.notes.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<User, Long> {


}
