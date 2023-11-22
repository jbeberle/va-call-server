package va.gov.claimserver.model;

import jakarta.persistence.*;
import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Builder
@Table(name="VET_CALL")
@ToString
public class VetCallEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String fullName;
    private String email;
    private String service;
    private String branch;
    private String screen;
    private String callReason;
    private String callClaimDescription;
    private String claimId;
    private String claimType;
    private String claimPhase;

}
