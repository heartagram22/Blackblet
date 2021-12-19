package com.betaplan.albin.blackbelt.models;

import com.sun.istack.NotNull;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.Size;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    private String name;

    @Email(message = "Email must be valid")
    @Size(min = 2, max = 255, message = "Email must not be blank")
    private String email;

    @Size(min = 8, max = 255, message = "Password must be at least 6 characters long")
    private String password;

    // This compares if passwords match
    @Transient
    private String passwordConfirmation;
    @Column(updatable = false)
    private Date createdAt;
    private Date updatedAt;

    @OneToMany(mappedBy = "creator", fetch = FetchType.LAZY)
    private List<Idea> ideas;
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "users_ideas", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "idea_id"))
    private List<Idea> likedIdeas;

    public User() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPasswordConfirmation() {
        return passwordConfirmation;
    }

    public void setPasswordConfirmation(String passwordConfirmation) {
        this.passwordConfirmation = passwordConfirmation;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    public List<Idea> getIdeas() {
        return ideas;
    }

    public void setIdeas(List<Idea> ideas) {
        this.ideas = ideas;
    }

    public List<Idea> getLikedIdeas() {
        return likedIdeas;
    }

    public void setLikedIdeas(List<Idea> likedIdeas) {
        this.likedIdeas = likedIdeas;
    }

    @PrePersist
    protected void onCreate() {
        this.createdAt = new Date();
    }

    @PreUpdate
    protected void onUpdate() {
        this.updatedAt = new Date();
    }
}
