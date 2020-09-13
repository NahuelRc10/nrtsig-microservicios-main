package nrt.microservicios.main.commons.carrera.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "correlativas")
public class AsignaturaCorrelativa {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	@Column(name = "id_asignatura")
	@NotNull
	private Long idAsignaturaPrincipal;
	@JsonIgnoreProperties(value = {"asignaturasHijas", "handler", "hibernateLazyInitializer"})
	@ManyToOne
	@JoinColumn(name = "id_correlativa")
	private Asignatura correlativa;
	
	public AsignaturaCorrelativa () {}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getIdAsignaturaPrincipal() {
		return idAsignaturaPrincipal;
	}

	public void setIdAsignaturaPrincipal(Long idAsignaturaPrincipal) {
		this.idAsignaturaPrincipal = idAsignaturaPrincipal;
	}

	public Asignatura getCorrelativa() {
		return correlativa;
	}

	public void setCorrelativa(Asignatura correlativa) {
		this.correlativa = correlativa;
	}
	
}
