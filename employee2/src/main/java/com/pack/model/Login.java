package com.pack.model;

import jakarta.persistence.*;

@Entity
@Table(name = "users") // Table name in the database
public class Login {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String password;

    // Constructors
    public Login() {}

    public Login(String name, String password) {
        this.name = name;
        this.password = password;
    }

    // Getters and Setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
}
