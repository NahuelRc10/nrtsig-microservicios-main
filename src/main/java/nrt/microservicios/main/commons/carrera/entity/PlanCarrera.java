package nrt.microservicios.main.commons.carrera.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
 
@Entity
@Table(name = "plan_carreras")
public class PlanCarrera {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	@Column(name = "anio_plan")
	@NotNull
	private Integer anioPlan;
	@Column(name = "fecha_cierre", nullable = true)
	private Date fechaCierre;
	@Column(name = "resolucion")
	@NotEmpty
	private String resolucion;
	@Column(name = "create_at")
	@Temporal(TemporalType.TIMESTAMP)
	private Date createAt;
	@JsonIgnoreProperties(value = {"planesCarrera", "hibernateLazyInitializer", "handler"})
	@ManyToOne
	@JoinColumn(name = "id_carrera")
	private Carrera carrera;
	@ManyToOne
	@JoinColumn(name = "id_departamento")
	private Departamento departamento;
	@JsonIgnoreProperties(value = {"planCarrera", "carrera", "planesCarrera", "alumno", "hibernateLazyInitializer", "handler"})
	@OneToMany(mappedBy = "planCarrera", fetch = FetchType.LAZY)
	private List<InscripcionCarrera> alumnosInscriptos;

	public PlanCarrera() {
		this.alumnosInscriptos = new ArrayList<InscripcionCarrera>();
	}
	
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

	public Integer getAnioPlan() {
		return anioPlan;
	}

	public void setAnioPlan(Integer anioPlan) {
		this.anioPlan = anioPlan;
	}

	public Date getFechaCierre() {
		return fechaCierre;
	}

	public void setFechaCierre(Date fechaCierre) {
		this.fechaCierre = fechaCierre;
	}

	public String getResolucion() {
		return resolucion;
	}

	public void setResolucion(String resolucion) {
		this.resolucion = resolucion;
	}

	public Date getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}
	
	public Carrera getCarrera() {
		return carrera;
	}
	
	public void setCarrera(Carrera carrera) {
		this.carrera = carrera;
	}

	public Departamento getDepartamento() {
		return departamento;
	}
	
	public void setDepartamento(Departamento departamento) {
		this.departamento = departamento;
	}

	public List<InscripcionCarrera> getAlumnosInscriptos() {
		return alumnosInscriptos;
	}

	public void setAlumnosInscriptos(List<InscripcionCarrera> alumnosInscriptos) {
		this.alumnosInscriptos = alumnosInscriptos;
	}
	
}
