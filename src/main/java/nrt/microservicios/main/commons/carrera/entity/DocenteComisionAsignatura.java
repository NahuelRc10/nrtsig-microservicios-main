package nrt.microservicios.main.commons.carrera.entity;

import nrt.microservicios.main.commons.usuario.entity.Docente;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "docente_comision_asignatura")
public class DocenteComisionAsignatura {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @ManyToOne
    @JoinColumn(name = "id_docente")
    private Docente docente;
    @ManyToOne
    @JoinColumn(name = "id_comision")
    private Comision comision;
    @ManyToOne
    @JoinColumn(name = "id_asignatura")
    private Asignatura asignatura;
    @Column(name = "dia_hora_cursado")
    @NotEmpty
    private String diaHoraCursado;
    @Column(name = "funcion_profesor")
    @NotNull
    private Integer funcionProfesor;
    @Column(name = "cantidad_horas_semanales")
    @NotNull
    private Integer cantidadHorasSemanales;

    public DocenteComisionAsignatura() {}

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Docente getDocente() {
        return docente;
    }

    public void setDocente(Docente docente) {
        this.docente = docente;
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

    public String getDiaHoraCursado() { return diaHoraCursado; }

    public void setDiaHoraCursado(String diaHoraCursado) { this.diaHoraCursado = diaHoraCursado; }

    public Integer getFuncionProfesor() { return funcionProfesor; }

    public void setFuncionProfesor(Integer funcionProfesor) { this.funcionProfesor = funcionProfesor; }

    public Integer getCantidadHorasSemanales() {
        return cantidadHorasSemanales;
    }

    public void setCantidadHorasSemanales(Integer cantidadHorasSemanales) {
        this.cantidadHorasSemanales = cantidadHorasSemanales;
    }
}
