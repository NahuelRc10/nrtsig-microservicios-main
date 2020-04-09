package nrt.microservicios.main.commons.usuario.entity;

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
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import nrt.microservicios.main.commons.carrera.entity.CursilloAlumno;
import nrt.microservicios.main.commons.carrera.entity.InscripcionCarrera;

@Entity
@Table(name = "alumnos")
public class Alumno {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	@Column(name = "legajo")
	@NotNull
	private Long legajo;
	@Column(name = "tipo_documento")
	@NotEmpty
	private String tipoDocumento;
	@Column(name = "nro_documento")
	@NotNull
	private Long numeroDocumento;
	@Column(name = "nombre")
	@NotEmpty
	private String nombre;
	@Column(name = "apellido")
	@NotEmpty
	private String apellido;
	@Column(name = "email")
	@Email
	private String email;
	@Column(name = "telefono")
	@NotEmpty
	private String telefono;
	@Column(name = "fecha_nacimiento")
	@NotNull
	private Date fechaNacimiento;
	@Column(name = "create_at")
	@Temporal(TemporalType.TIMESTAMP)
	private Date createAt;
	@Column(name = "cuit")
	@NotNull
	private String cuit;
	@Column(name = "sexo")
	@NotEmpty
	private String sexo;
	@ManyToOne
	@JoinColumn(name = "id_ciudad")
	private Ciudad ciudad;
	@ManyToOne
	@JoinColumn(name = "id_domicilio")
	private Domicilio domicilio;
	@OneToMany(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_alumno")
	private List<InscripcionCarrera> carreras;
	@OneToOne
	private CursilloAlumno cursilloAlumno;
	
	public Alumno() {
		this.carreras = new ArrayList<InscripcionCarrera>();
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

	public Long getLegajo() {
		return legajo;
	}

	public void setLegajo(Long legajo) {
		this.legajo = legajo;
	}

	public String getTipoDocumento() {
		return tipoDocumento;
	}

	public void setTipoDocumento(String tipoDocumento) {
		this.tipoDocumento = tipoDocumento;
	}

	public Long getNumeroDocumento() {
		return numeroDocumento;
	}

	public void setNumeroDocumento(Long numeroDocumento) {
		this.numeroDocumento = numeroDocumento;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public Date getFechaNacimiento() {
		return fechaNacimiento;
	}

	public void setFechaNacimiento(Date fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}

	public Date getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}

	public String getCuit() {
		return cuit;
	}

	public void setCuit(String cuit) {
		this.cuit = cuit;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public Ciudad getCiudad() {
		return ciudad;
	}

	public void setCiudad(Ciudad ciudad) {
		this.ciudad = ciudad;
	}

	public Domicilio getDomicilio() {
		return domicilio;
	}

	public void setDomicilio(Domicilio domicilio) {
		this.domicilio = domicilio;
	}

	public List<InscripcionCarrera> getCarreras() {
		return carreras;
	}

	public void setCarreras(List<InscripcionCarrera> carreras) {
		this.carreras = carreras;
	}

	public CursilloAlumno getCursilloAlumno() {
		return cursilloAlumno;
	}

	public void setCursilloAlumno(CursilloAlumno cursilloAlumno) {
		this.cursilloAlumno = cursilloAlumno;
	}
	
}
