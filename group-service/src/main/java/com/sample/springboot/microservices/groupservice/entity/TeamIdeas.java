package com.sample.springboot.microservices.groupservice.entity;

import java.io.Serializable;
import java.time.LocalDateTime;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.LastModifiedBy;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/**
 * team_ideas entity
 * @author Manjunath Asundi
 */

@Entity
@Table(name = "team_ideas")
@Setter
@Getter
@NoArgsConstructor
@ToString
public class TeamIdeas implements Serializable {

    /**
     *
     */
    private static final long serialVersionUID = 1628638808413698864L;

    @Id
    @GeneratedValue(generator = "team_idea_seq_gen")
    @SequenceGenerator(name = "team_idea_seq_gen", initialValue = 1, allocationSize = 1)
    private Long id;

    @Column(nullable = false)
    private String ideate; 

    @Lob
    @Column(columnDefinition="TEXT")
    private String prototypePhase;

    @Lob
    @Column(columnDefinition="TEXT")
    private String testPhase;

    @CreatedBy
    @Column(nullable = true, updatable = false)
    private String createdBy;

    @Column(nullable = true)
    @LastModifiedBy
    private String updatedBy;

    @CreationTimestamp
    @Column(nullable = false, updatable = false)
    private LocalDateTime createdTime;

    @UpdateTimestamp
    private LocalDateTime updatedTime;

    @ManyToOne(cascade = CascadeType.ALL)
    private TeamVirtualWallIdeas teamVirtualWallIdeas;

    @ManyToOne(cascade = CascadeType.ALL)
    private Team team; 

    @OneToOne
    private TeamIdeaSelection teamIdeaSelection;

    public TeamIdeas(String ideate, String prototypePhase, String testPhase) {
        this.ideate = ideate;
        this.prototypePhase = prototypePhase;
        this.testPhase = testPhase;
    }
}