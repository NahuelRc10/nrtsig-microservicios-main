package nrt.microservicios.main.commons.carrera.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "aulas")
public class Aula {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	@Column(name = "numero_salon")
	private Integer numeroSalon;
	@Column(name = "create_at")
	@Temporal(TemporalType.TIMESTAMP)
	private Date createAt;
	@JsonIgnoreProperties(value = {"aulas", "hibernateLazyInitializer", "handler"})
	@ManyToOne
	@JoinColumn(name = "id_comision")
	private Comision comision;
	
	public Aula() {}
	
	@PrePersist
	public void prePersist() {
		this.createAt = new Date();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Integer getNumeroSalon() {
		return numeroSalon;
	}

	public void setNumeroSalon(Integer numeroSalon) {
		this.numeroSalon = numeroSalon;
	}

	public Date getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}

	public Comision getComision() {
		return comision;
	}

	public void setComision(Comision comision) {
		this.comision = comision;
	}
	
}
