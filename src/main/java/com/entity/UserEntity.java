package com.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@Table(name="users")
@EntityListeners(AuditingEntityListener.class)
public class UserEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String email;
	private String password;
	
	@Temporal(TemporalType.TIMESTAMP)
	@CreatedDate
	private Date createBy;
	
	@Temporal(TemporalType.TIMESTAMP)
	@LastModifiedDate
	private Date modifiedBy;
	public int getId() {
		return id;
	}
	public void setId(int id) {
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
	public Date getCreateBy() {
		return createBy;
	}
	public void setCreateBy(Date createBy) {
		this.createBy = createBy;
	}
	public Date getModifiedBy() {
		return modifiedBy;
	}
	public void setModifiedBy(Date modifiedBy) {
		this.modifiedBy = modifiedBy;
	}
	
	
}
