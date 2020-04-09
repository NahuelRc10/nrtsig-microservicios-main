package nrt.microservicios.main.commons.carrera.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import nrt.microservicios.main.commons.usuario.entity.Alumno;

@Entity
@Table(name = "cursillo_alumnos")
public class CursilloAlumno {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	@Column(name = "nota_promedio")
	private Double notaPromedio;
	@Column(name = "create_at")
	private Date createAt;
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "alumno_id", referencedColumnName = "id")
	private Alumno alumno;

	public CursilloAlumno() {}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Double getNotaPromedio() {
		return notaPromedio;
	}

	public void setNotaPromedio(Double notaPromedio) {
		this.notaPromedio = notaPromedio;
	}

	public Date getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}

	public Alumno getAlumno() {
		return alumno;
	}

	public void setAlumno(Alumno alumno) {
		this.alumno = alumno;
	}

}
