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
@Table(name = "carreras")
public class Carrera {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	@Column(name = "nombre")
	@NotEmpty
	private String nombre;
	@Column(name =  "nombre_corto")
	@NotEmpty
	private String nombreCorto;
	@Column(name = "duracion")
	@NotNull
	private Integer duracion;
	@Column(name = "descripcion")
	@NotEmpty
	private String descripcion;
	@Column(name = "create_at")
	@Temporal(TemporalType.TIMESTAMP)
	private Date createAt;
	@ManyToOne
	@JoinColumn(name = "id_tipo_carrera")
	private TipoCarrera tipoCarrera;
	@ManyToOne
	@JoinColumn(name = "id_departamento")
	private Departamento Departamento;
	@JsonIgnoreProperties(value = {"carrera", "hibernateLazyInitializer", "handler"})
	@OneToMany(mappedBy = "carrera", fetch = FetchType.LAZY)
	private List<PlanCarrera> planesCarrera;
	@Column(name = "carrera_activa")
	private Boolean carreraActiva;

	public Carrera() {
		this.planesCarrera = new ArrayList<PlanCarrera>();
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

	public String getNombreCorto() {
		return nombreCorto;
	}

	public void setNombreCorto(String nombreCorto) {
		this.nombreCorto = nombreCorto;
	}

	public Integer getDuracion() {
		return duracion;
	}

	public void setDuracion(Integer duracion) {
		this.duracion = duracion;
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

	public TipoCarrera getTipoCarrera() {
		return tipoCarrera;
	}

	public void setTipoCarrera(TipoCarrera tipoCarrera) {
		this.tipoCarrera = tipoCarrera;
	}

	public Departamento getDepartamento() {
		return Departamento;
	}

	public void setDepartamento(Departamento departamento) {
		Departamento = departamento;
	}

	public List<PlanCarrera> getPlanesCarrera() {
		return planesCarrera;
	}

	public void setPlanesCarrera(List<PlanCarrera> planesCarrera) {
		this.planesCarrera = planesCarrera;
	}

	public Boolean getCarreraActiva() {
		return carreraActiva;
	}

	public void setCarreraActiva(Boolean carreraActiva) {
		this.carreraActiva = carreraActiva;
	}
	
}
