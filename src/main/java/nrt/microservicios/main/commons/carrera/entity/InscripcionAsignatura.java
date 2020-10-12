package nrt.microservicios.main.commons.carrera.entity;

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

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import nrt.microservicios.main.commons.usuario.entity.Alumno;

@Entity
@Table(name = "inscripcion_asignatura")
public class InscripcionAsignatura {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	@Column(name = "fecha_inscripcion")
	@Temporal(TemporalType.TIMESTAMP)
	private Date fechaInscripcion;
	@JsonIgnoreProperties(value = {"asignaturas", "carreras", "hibernateLazyInitializer", "handler"})
	@ManyToOne
	@JoinColumn(name = "id_alumno")
	private Alumno alumno;
	@JsonIgnoreProperties(value = {"alumnosInscriptos", "hibernateLazyInitializer", "handler"})
	@ManyToOne
	@JoinColumn(name = "id_plan")
	private PlanCarrera planCarrera;
	@ManyToOne
	@JoinColumn(name = "id_estado")
	private EstadoAsignatura estadoAsignatura;
	@JsonIgnoreProperties(value = {"planCarrera", "hibernateLazyInitializer", "handler"})
	@ManyToOne
	@JoinColumn(name = "id_comision")
	private Comision comision;
	@JsonIgnoreProperties(value = {"alumnosInscriptos", "asignaturasHijas", "hibernateLazyInitializer", "handler"})
	@ManyToOne
	@JoinColumn(name = "id_asignatura")
	private Asignatura asignatura;
	@Column(name = "nota")
	private Double nota;
	@Column(name = "create_at")
	@Temporal(TemporalType.TIMESTAMP)
	private Date createAt;
	
	public InscripcionAsignatura() {}
	
	@PrePersist
	public void prePersist() {
		this.createAt = new Date();
		this.fechaInscripcion = new Date();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getFechaInscripcion() {
		return fechaInscripcion;
	}

	public void setFechaInscripcion(Date fechaInscripcion) {
		this.fechaInscripcion = fechaInscripcion;
	}

	public Alumno getAlumno() {
		return alumno;
	}

	public void setAlumno(Alumno alumno) {
		this.alumno = alumno;
	}

	public PlanCarrera getPlanCarrera() {
		return planCarrera;
	}

	public void setPlanCarrera(PlanCarrera planCarrera) {
		this.planCarrera = planCarrera;
	}

	public EstadoAsignatura getEstadoAsignatura() {
		return estadoAsignatura;
	}

	public void setEstadoAsignatura(EstadoAsignatura estadoAsignatura) {
		this.estadoAsignatura = estadoAsignatura;
	}

	public Comision getComision() {
		return comision;
	}

	public void setComision(Comision comision) {
		this.comision = comision;
	}
	
	public Asignatura getAsignatura() {
		return asignatura;
	}
	
	public void setAsignatura(Asignatura asignatura) {
		this.asignatura = asignatura;
	}

	public Double getNota() {
		return nota;
	}

	public void setNota(Double nota) {
		this.nota = nota;
	}

	public Date getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}
	
}
