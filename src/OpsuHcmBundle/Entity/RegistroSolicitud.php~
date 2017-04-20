<?php

namespace OpsuHcmBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * RegistroSolicitud
 *
 * @ORM\Table(name="registro_solicitud", indexes={@ORM\Index(name="IDX_3C2E4C851242AED", columns={"idestatus"}), @ORM\Index(name="IDX_3C2E4C86C1EE153", columns={"idpaciente"}), @ORM\Index(name="IDX_3C2E4C869E0B680", columns={"idpatologia"}), @ORM\Index(name="IDX_3C2E4C8E8C9D535", columns={"idsolicitud"}), @ORM\Index(name="IDX_3C2E4C8174D74B2", columns={"idtiposolicitud"}), @ORM\Index(name="IDX_3C2E4C8A62749A9", columns={"idtitular"})})
 * @ORM\Entity
 */
class RegistroSolicitud
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="registro_solicitud_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="centro_medico", type="string", length=255, nullable=true)
     */
    private $centroMedico;

    /**
     * @var string
     *
     * @ORM\Column(name="tratamiento", type="text", nullable=true)
     */
    private $tratamiento;

    /**
     * @var string
     *
     * @ORM\Column(name="monto_solicitado", type="decimal", precision=10, scale=0, nullable=true)
     */
    private $montoSolicitado;

    /**
     * @var string
     *
     * @ORM\Column(name="observacion", type="text", nullable=true)
     */
    private $observacion;

    /**
     * @var string
     *
     * @ORM\Column(name="informe_medico_ruta", type="text", nullable=true)
     */
    private $informeMedicoRuta;

    /**
     * @var string
     *
     * @ORM\Column(name="presupuesto_ruta", type="string", length=255, nullable=false)
     */
    private $presupuestoRuta;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fecha_aprobado", type="date", nullable=true)
     */
    private $fechaAprobado;

    /**
     * @var boolean
     *
     * @ORM\Column(name="completado", type="boolean", nullable=true)
     */
    private $completado;

    /**
     * @var \Estatus
     *
     * @ORM\ManyToOne(targetEntity="Estatus")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="idestatus", referencedColumnName="id")
     * })
     */
    private $idestatus;

    /**
     * @var \Persona
     *
     * @ORM\ManyToOne(targetEntity="Persona")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="idpaciente", referencedColumnName="id")
     * })
     */
    private $idpaciente;

    /**
     * @var \Patologia
     *
     * @ORM\ManyToOne(targetEntity="Patologia")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="idpatologia", referencedColumnName="id")
     * })
     */
    private $idpatologia;

    /**
     * @var \Solicitud
     *
     * @ORM\ManyToOne(targetEntity="Solicitud")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="idsolicitud", referencedColumnName="id")
     * })
     */
    private $idsolicitud;

    /**
     * @var \Tiposolicitud
     *
     * @ORM\ManyToOne(targetEntity="Tiposolicitud")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="idtiposolicitud", referencedColumnName="id")
     * })
     */
    private $idtiposolicitud;

    /**
     * @var \Titular
     *
     * @ORM\ManyToOne(targetEntity="Titular")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="idtitular", referencedColumnName="id")
     * })
     */
    private $idtitular;



    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set centroMedico
     *
     * @param string $centroMedico
     * @return RegistroSolicitud
     */
    public function setCentroMedico($centroMedico)
    {
        $this->centroMedico = $centroMedico;

        return $this;
    }

    /**
     * Get centroMedico
     *
     * @return string 
     */
    public function getCentroMedico()
    {
        return $this->centroMedico;
    }

    /**
     * Set tratamiento
     *
     * @param string $tratamiento
     * @return RegistroSolicitud
     */
    public function setTratamiento($tratamiento)
    {
        $this->tratamiento = $tratamiento;

        return $this;
    }

    /**
     * Get tratamiento
     *
     * @return string 
     */
    public function getTratamiento()
    {
        return $this->tratamiento;
    }

    /**
     * Set montoSolicitado
     *
     * @param string $montoSolicitado
     * @return RegistroSolicitud
     */
    public function setMontoSolicitado($montoSolicitado)
    {
        $this->montoSolicitado = $montoSolicitado;

        return $this;
    }

    /**
     * Get montoSolicitado
     *
     * @return string 
     */
    public function getMontoSolicitado()
    {
        return $this->montoSolicitado;
    }

    /**
     * Set observacion
     *
     * @param string $observacion
     * @return RegistroSolicitud
     */
    public function setObservacion($observacion)
    {
        $this->observacion = $observacion;

        return $this;
    }

    /**
     * Get observacion
     *
     * @return string 
     */
    public function getObservacion()
    {
        return $this->observacion;
    }

    /**
     * Set informeMedicoRuta
     *
     * @param string $informeMedicoRuta
     * @return RegistroSolicitud
     */
    public function setInformeMedicoRuta($informeMedicoRuta)
    {
        $this->informeMedicoRuta = $informeMedicoRuta;

        return $this;
    }

    /**
     * Get informeMedicoRuta
     *
     * @return string 
     */
    public function getInformeMedicoRuta()
    {
        return $this->informeMedicoRuta;
    }

    /**
     * Set presupuestoRuta
     *
     * @param string $presupuestoRuta
     * @return RegistroSolicitud
     */
    public function setPresupuestoRuta($presupuestoRuta)
    {
        $this->presupuestoRuta = $presupuestoRuta;

        return $this;
    }

    /**
     * Get presupuestoRuta
     *
     * @return string 
     */
    public function getPresupuestoRuta()
    {
        return $this->presupuestoRuta;
    }

    /**
     * Set fechaAprobado
     *
     * @param \DateTime $fechaAprobado
     * @return RegistroSolicitud
     */
    public function setFechaAprobado($fechaAprobado)
    {
        $this->fechaAprobado = $fechaAprobado;

        return $this;
    }

    /**
     * Get fechaAprobado
     *
     * @return \DateTime 
     */
    public function getFechaAprobado()
    {
        return $this->fechaAprobado;
    }

    /**
     * Set completado
     *
     * @param boolean $completado
     * @return RegistroSolicitud
     */
    public function setCompletado($completado)
    {
        $this->completado = $completado;

        return $this;
    }

    /**
     * Get completado
     *
     * @return boolean 
     */
    public function getCompletado()
    {
        return $this->completado;
    }

    /**
     * Set idestatus
     *
     * @param \OpsuHcmBundle\Entity\Estatus $idestatus
     * @return RegistroSolicitud
     */
    public function setIdestatus(\OpsuHcmBundle\Entity\Estatus $idestatus = null)
    {
        $this->idestatus = $idestatus;

        return $this;
    }

    /**
     * Get idestatus
     *
     * @return \OpsuHcmBundle\Entity\Estatus 
     */
    public function getIdestatus()
    {
        return $this->idestatus;
    }

    /**
     * Set idpaciente
     *
     * @param \OpsuHcmBundle\Entity\Persona $idpaciente
     * @return RegistroSolicitud
     */
    public function setIdpaciente(\OpsuHcmBundle\Entity\Persona $idpaciente = null)
    {
        $this->idpaciente = $idpaciente;

        return $this;
    }

    /**
     * Get idpaciente
     *
     * @return \OpsuHcmBundle\Entity\Persona 
     */
    public function getIdpaciente()
    {
        return $this->idpaciente;
    }

    /**
     * Set idpatologia
     *
     * @param \OpsuHcmBundle\Entity\Patologia $idpatologia
     * @return RegistroSolicitud
     */
    public function setIdpatologia(\OpsuHcmBundle\Entity\Patologia $idpatologia = null)
    {
        $this->idpatologia = $idpatologia;

        return $this;
    }

    /**
     * Get idpatologia
     *
     * @return \OpsuHcmBundle\Entity\Patologia 
     */
    public function getIdpatologia()
    {
        return $this->idpatologia;
    }

    /**
     * Set idsolicitud
     *
     * @param \OpsuHcmBundle\Entity\Solicitud $idsolicitud
     * @return RegistroSolicitud
     */
    public function setIdsolicitud(\OpsuHcmBundle\Entity\Solicitud $idsolicitud = null)
    {
        $this->idsolicitud = $idsolicitud;

        return $this;
    }

    /**
     * Get idsolicitud
     *
     * @return \OpsuHcmBundle\Entity\Solicitud 
     */
    public function getIdsolicitud()
    {
        return $this->idsolicitud;
    }

    /**
     * Set idtiposolicitud
     *
     * @param \OpsuHcmBundle\Entity\Tiposolicitud $idtiposolicitud
     * @return RegistroSolicitud
     */
    public function setIdtiposolicitud(\OpsuHcmBundle\Entity\Tiposolicitud $idtiposolicitud = null)
    {
        $this->idtiposolicitud = $idtiposolicitud;

        return $this;
    }

    /**
     * Get idtiposolicitud
     *
     * @return \OpsuHcmBundle\Entity\Tiposolicitud 
     */
    public function getIdtiposolicitud()
    {
        return $this->idtiposolicitud;
    }

    /**
     * Set idtitular
     *
     * @param \OpsuHcmBundle\Entity\Titular $idtitular
     * @return RegistroSolicitud
     */
    public function setIdtitular(\OpsuHcmBundle\Entity\Titular $idtitular = null)
    {
        $this->idtitular = $idtitular;

        return $this;
    }

    /**
     * Get idtitular
     *
     * @return \OpsuHcmBundle\Entity\Titular 
     */
    public function getIdtitular()
    {
        return $this->idtitular;
    }
}
