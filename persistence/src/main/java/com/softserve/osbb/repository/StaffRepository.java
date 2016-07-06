package com.softserve.osbb.repository;

import com.softserve.osbb.model.StaffEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface StaffRepository extends JpaRepository<StaffEntity, Integer> {
}