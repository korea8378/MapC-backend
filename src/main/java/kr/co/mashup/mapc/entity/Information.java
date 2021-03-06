package kr.co.mashup.mapc.entity;

import lombok.*;

import javax.persistence.*;

/**
 * 정류장의 주변 정보
 */
@Entity
@Table(name = "information")
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Getter
@ToString
@EqualsAndHashCode(callSuper = false, of = "id")
public class Information extends BaseTimeEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "station_id")
    private Station station;

    @OneToOne(fetch = FetchType.LAZY, mappedBy = "information")
    private InformationCategory informationCategory;

    @Column(name = "title", length = 100)
    private String title;

    @Lob
    @Column(name = "content", columnDefinition = "TEXT")
    private String content;

    @Column(name = "image_url", length = 300)
    private String imageUrl;

    @Builder
    public Information(Station station, String title, String content, String imageUrl) {
        this.station = station;
        this.title = title;
        this.content = content;
        this.imageUrl = imageUrl;
    }
}
