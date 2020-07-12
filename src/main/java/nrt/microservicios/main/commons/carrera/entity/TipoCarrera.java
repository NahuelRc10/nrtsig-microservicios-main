package nrt.microservicios.main.commons.carrera.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "tipo_carreras")
public class TipoCarrera {
	
	public static final String PRE_GRADO = "PRE-GRADO";
	public static final String GRADO = "GRADO";
	public static final String POS_GRADO = "POS-GRADO";
	public static final String MAESTRIA = "MAESTRIA";
	public static final String DOCTORADO = "DOCTORADO";

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	@Column(name = "tipo_carrera")
	@NotEmpty
	private String tipoCarrera;
	@Column(name = "cant_min_anios")
	@NotNull
	private Integer cantidadMinAnios;
	@Column(name = "cant_max_anios")
	@NotNull
	private Integer cantidadMaxAnios;
	@Column(name = "create_at")
	@Temporal(TemporalType.TIMESTAMP)
	private Date createAt;
	
	public TipoCarrera() {}
	
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

	public String getTipoCarrera() {
		return tipoCarrera;
	}

	public void setTipoCarrera(String tipoCarrera) {
		this.tipoCarrera = tipoCarrera;
	}
	
	public Integer getCantidadMinAnios() {
		return cantidadMinAnios;
	}
	
	public void setCantidadMinAnios(Integer cantidadMinAnios) {
		this.cantidadMinAnios = cantidadMinAnios;
	}

	public Integer getCantidadMaxAnios() {
		return cantidadMaxAnios;
	}
	
	public void setCantidadMaxAnios(Integer cantidadMaxAnios) {
		this.cantidadMaxAnios = cantidadMaxAnios;
	}
	
	public Date getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}
	
}
