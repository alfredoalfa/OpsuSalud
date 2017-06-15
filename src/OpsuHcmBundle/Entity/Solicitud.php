<?php

namespace OpsuHcmBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Solicitud
 *
 * @ORM\Table(name="solicitud", indexes={@ORM\Index(name="IDX_96D27CC0A62749A9", columns={"idtitular"})})
 * @ORM\Entity(repositoryClass="OpsuHcmBundle\EntityRepository\Solicitud")
 */
class Solicitud
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="solicitud_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fecha_solicitud", type="date", nullable=true)
     */
    private $fechaSolicitud;

    /**
     * @var string
     *
     * @ORM\Column(name="observacion", type="text", nullable=true)
     */
    private $observacion;

    /**
     * @var boolean
     *
     * @ORM\Column(name="completado", type="boolean", nullable=true)
     */
    private $completado;

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
     * @var \Tiposolicitud
     *
     * @ORM\ManyToOne(targetEntity="Tiposolicitud")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="idtiposolicitud", referencedColumnName="id")
     * })
     */
    private $idtiposolicitud;


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
     * Set fechaSolicitud
     *
     * @param \DateTime $fechaSolicitud
     * @return Solicitud
     */
    public function setFechaSolicitud($fechaSolicitud)
    {
        $this->fechaSolicitud = $fechaSolicitud;

        return $this;
    }

    /**
     * Get fechaSolicitud
     *
     * @return \DateTime 
     */
    public function getFechaSolicitud()
    {
        return $this->fechaSolicitud;
    }

    /**
     * Set observacion
     *
     * @param string $observacion
     * @return Solicitud
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
     * Set completado
     *
     * @param boolean $completado
     * @return Solicitud
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
     * Set idtitular
     *
     * @param \OpsuHcmBundle\Entity\Titular $idtitular
     * @return Solicitud
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

    /**
     * Set idtiposolicitud
     *
     * @param \OpsuHcmBundle\Entity\Tiposolicitud $idtiposolicitud
     * @return Solicitud
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
}
