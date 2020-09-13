package nrt.microservicios.main.commons.carrera.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

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

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "asignaturas")
public class Asignatura {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	@Column(name = "nombre")
	@NotEmpty
	private String nombre;
	@Column(name = "descripcion")
	private String descripcion;
	@Column(name = "create_at")
	@Temporal(TemporalType.TIMESTAMP)
	private Date createAt;
	@Column(name = "nivel")
	private Integer nivel;
	@JsonIgnoreProperties(value = {"correlativa", "handler", "hibernateLazyInitializer"})
	@OneToMany(mappedBy = "correlativa", fetch = FetchType.LAZY)
	private List<AsignaturaCorrelativa> asignaturasHijas;
	@ManyToOne
	@JoinColumn(name = "id_plan_carrera")
	private PlanCarrera planCarrera;

	public Asignatura() {
		this.asignaturasHijas = new ArrayList<AsignaturaCorrelativa>();
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

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public Date getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}

	public Integer getNivel() {
		return nivel;
	}
	
	public void setNivel(Integer nivel) {
		this.nivel = nivel;
	}

	public List<AsignaturaCorrelativa> getAsignaturasHijas() {
		return asignaturasHijas;
	}

	public void setAsignaturasHijas(List<AsignaturaCorrelativa> asignaturasHijas) {
		this.asignaturasHijas = asignaturasHijas;
	}
	
	public PlanCarrera getPlanCarrera() {
		return planCarrera;
	}
	
	public void setPlanCarrera(PlanCarrera planCarrera) {
		this.planCarrera = planCarrera;
	}

}
