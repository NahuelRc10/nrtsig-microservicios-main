package nrt.microservicios.main.commons.usuario.entity;

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
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import nrt.microservicios.main.commons.carrera.entity.InscripcionAsignatura;
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
	@Column(name = "foto")
	@Lob
	@JsonIgnore
	private byte[] foto;
	@ManyToOne
	@JoinColumn(name = "id_ciudad")
	private Ciudad ciudad;
	@ManyToOne
	@JoinColumn(name = "id_domicilio")
	private Domicilio domicilio;
	@JsonIgnoreProperties(value = {"alumno", "hibernateLazyInitializer", "handler"})
	@OneToMany(mappedBy = "alumno", fetch = FetchType.LAZY)
	private List<InscripcionCarrera> carreras;
	@JsonIgnoreProperties(value = {"alumno", "hibernateLazyInitializer", "handler"})
	@OneToMany(mappedBy = "alumno", fetch = FetchType.LAZY)
	private List<InscripcionAsignatura> asignaturas;
	
	public Alumno() {
		this.carreras = new ArrayList<InscripcionCarrera>();
		this.asignaturas = new ArrayList<>();
	}
	
	@PrePersist
	public void prePersist() {
		this.createAt = new Date();
	}
	
	// Metodo para retornar un identificador de la foto, se debe serializar en el json
	public Integer getFotoHashCode() {
		return (this.foto != null) ? this.foto.hashCode() : null;
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
	
	public byte[] getFoto() {
		return foto;
	}

	public void setFoto(byte[] foto) {
		this.foto = foto;
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

	public List<InscripcionAsignatura> getAsignaturas() {
		return asignaturas;
	}

	public void setAsignaturas(List<InscripcionAsignatura> asignaturas) {
		this.asignaturas = asignaturas;
	}
}
