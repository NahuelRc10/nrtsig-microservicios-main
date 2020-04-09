package nrt.microservicios.main.commons.carrera.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
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

import nrt.microservicios.main.commons.usuario.entity.Alumno;

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
	@Column(name = "fecha_cierre")
	private Date fechaCierre;
	@Column(name = "resolucion")
	@NotEmpty
	private String resolucion;
	@Column(name = "create_at")
	@Temporal(TemporalType.TIMESTAMP)
	private Date createAt;
	@ManyToOne
	@JoinColumn(name = "id_carrera", referencedColumnName = "id", nullable = false)
	private Carrera carrera;
	@OneToMany(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_plan_carrera")
	private List<Alumno> alumnosInscriptos;
	
	public PlanCarrera() {
		this.alumnosInscriptos = new ArrayList<Alumno>();
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

	public List<Alumno> getAlumnosInscriptos() {
		return alumnosInscriptos;
	}

	public void setAlumnosInscriptos(List<Alumno> alumnosInscriptos) {
		this.alumnosInscriptos = alumnosInscriptos;
	}

}
