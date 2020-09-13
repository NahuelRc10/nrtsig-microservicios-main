package nrt.microservicios.main.commons.carrera.entity;

import nrt.microservicios.main.commons.usuario.entity.Docente;

import javax.persistence.*;

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
}
