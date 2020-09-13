package nrt.microservicios.main.commons.carrera.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import java.util.Date;
import java.util.List;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "comisiones")
public class Comision {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	@Column(name = "numero_comision")
	@NotNull
	private Integer numeroComision;
	@Column(name = "capacidad_maxima")
	@NotNull
	private Integer capacidadMaxima;
	@Column(name = "capacidad_actual")
	@NotNull
	private Integer capacidadActual;
	@Column(name = "create_at")
	@Temporal(TemporalType.TIMESTAMP)
	private Date createAt;
	@ManyToOne
	@JoinColumn(name = "id_plan_carrera")
	private PlanCarrera planCarrera;
	@JsonIgnoreProperties(value = {"comision", "hibernateLazyInitializer", "handler"})
	@OneToMany(mappedBy = "comision", fetch = FetchType.LAZY)
	private List<Aula> aulas;

	public Comision() {}
	
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

	public Integer getNumeroComision() {
		return numeroComision;
	}

	public void setNumeroComision(Integer numeroComision) {
		this.numeroComision = numeroComision;
	}

	public Integer getCapacidadMaxima() {
		return capacidadMaxima;
	}

	public void setCapacidadMaxima(Integer capacidadMaxima) {
		this.capacidadMaxima = capacidadMaxima;
	}

	public Integer getCapacidadActual() {
		return capacidadActual;
	}

	public void setCapacidadActual(Integer capacidadActual) {
		this.capacidadActual = capacidadActual;
	}

	public Date getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}

	public PlanCarrera getPlanCarrera() {
		return planCarrera;
	}

	public void setPlanCarrera(PlanCarrera planCarrera) {
		this.planCarrera = planCarrera;
	}

	public List<Aula> getAulas() { return aulas; }

	public void setAulas(List<Aula> aulas) { this.aulas = aulas; }
}
