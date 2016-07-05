package com.softserve.osbb.model;

import javax.persistence.*;
import java.util.Collection;

/**
 * Created by cavayman on 05.07.2016.
 */
@Entity
@Table(name = "appartament", schema = "public", catalog = "myosbb")
public class AppartamentEntity {
    private Integer appartamentId;
    private Integer houseId;
    private Integer number;
    private Integer ownerId;
    private HouseEntity houseByHouseId;
    private UserEntity userByOwnerId;
    private Collection<AppartamentUserEntity> appartamentUsersByAppartamentId;

    @Id
    @Column(name = "appartament_id")
    public Integer getAppartamentId() {
        return appartamentId;
    }

    public void setAppartamentId(Integer appartamentId) {
        this.appartamentId = appartamentId;
    }

    @Basic
    @Column(name = "house_id")
    public Integer getHouseId() {
        return houseId;
    }

    public void setHouseId(Integer houseId) {
        this.houseId = houseId;
    }

    @Basic
    @Column(name = "number")
    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    @Basic
    @Column(name = "owner_id")
    public Integer getOwnerId() {
        return ownerId;
    }

    public void setOwnerId(Integer ownerId) {
        this.ownerId = ownerId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        AppartamentEntity that = (AppartamentEntity) o;

        if (appartamentId != null ? !appartamentId.equals(that.appartamentId) : that.appartamentId != null)
            return false;
        if (houseId != null ? !houseId.equals(that.houseId) : that.houseId != null) return false;
        if (number != null ? !number.equals(that.number) : that.number != null) return false;
        if (ownerId != null ? !ownerId.equals(that.ownerId) : that.ownerId != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = appartamentId != null ? appartamentId.hashCode() : 0;
        result = 31 * result + (houseId != null ? houseId.hashCode() : 0);
        result = 31 * result + (number != null ? number.hashCode() : 0);
        result = 31 * result + (ownerId != null ? ownerId.hashCode() : 0);
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "house_id", referencedColumnName = "house_id")
    public HouseEntity getHouseByHouseId() {
        return houseByHouseId;
    }

    public void setHouseByHouseId(HouseEntity houseByHouseId) {
        this.houseByHouseId = houseByHouseId;
    }

    @ManyToOne
    @JoinColumn(name = "owner_id", referencedColumnName = "user_id")
    public UserEntity getUserByOwnerId() {
        return userByOwnerId;
    }

    public void setUserByOwnerId(UserEntity userByOwnerId) {
        this.userByOwnerId = userByOwnerId;
    }

    @OneToMany(mappedBy = "appartamentByAppartamentId")
    public Collection<AppartamentUserEntity> getAppartamentUsersByAppartamentId() {
        return appartamentUsersByAppartamentId;
    }

    public void setAppartamentUsersByAppartamentId(Collection<AppartamentUserEntity> appartamentUsersByAppartamentId) {
        this.appartamentUsersByAppartamentId = appartamentUsersByAppartamentId;
    }
}