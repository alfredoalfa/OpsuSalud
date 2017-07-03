<?php

namespace OpsuHcmBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ReembolsoSolicitud
 *
 * @ORM\Table(name="reembolso_solicitud", indexes={@ORM\Index(name="idx_6e879b1a37f801f0", columns={"idcentromedico"}), @ORM\Index(name="idx_6e879b1a5d8b930d", columns={"idregistrosolicitud"})})
 * @ORM\Entity
 */
class ReembolsoSolicitud
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="reembolso_solicitud_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="monto_solicitado", type="decimal", precision=10, scale=2, nullable=false)
     */
    private $montoSolicitado;

    /**
     * @var string
     *
     * @ORM\Column(name="presupuesto_recibo_ruta", type="text", nullable=true)
     */
    private $presupuestoReciboRuta;

    /**
     * @var string
     *
     * @ORM\Column(name="monto_aprobado", type="decimal", precision=10, scale=2, nullable=false)
     */
    private $montoAprobado;

    /**
     * @var \CentroMedico
     *
     * @ORM\ManyToOne(targetEntity="CentroMedico")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="idcentromedico", referencedColumnName="id")
     * })
     */
    private $idcentromedico;

    /**
     * @var \RegistroSolicitud
     *
     * @ORM\ManyToOne(targetEntity="RegistroSolicitud")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="idregistrosolicitud", referencedColumnName="id")
     * })
     */
    private $idregistrosolicitud;



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
     * Set montoSolicitado
     *
     * @param string $montoSolicitado
     * @return ReembolsoSolicitud
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
     * Set presupuestoReciboRuta
     *
     * @param string $presupuestoReciboRuta
     * @return ReembolsoSolicitud
     */
    public function setPresupuestoReciboRuta($presupuestoReciboRuta)
    {
        $this->presupuestoReciboRuta = $presupuestoReciboRuta;

        return $this;
    }

    /**
     * Get presupuestoReciboRuta
     *
     * @return string 
     */
    public function getPresupuestoReciboRuta()
    {
        return $this->presupuestoReciboRuta;
    }

    /**
     * Set montoAprobado
     *
     * @param string $montoAprobado
     * @return ReembolsoSolicitud
     */
    public function setMontoAprobado($montoAprobado)
    {
        $this->montoAprobado = $montoAprobado;

        return $this;
    }

    /**
     * Get montoAprobado
     *
     * @return string 
     */
    public function getMontoAprobado()
    {
        return $this->montoAprobado;
    }

    /**
     * Set idcentromedico
     *
     * @param \OpsuHcmBundle\Entity\CentroMedico $idcentromedico
     * @return ReembolsoSolicitud
     */
    public function setIdcentromedico(\OpsuHcmBundle\Entity\CentroMedico $idcentromedico = null)
    {
        $this->idcentromedico = $idcentromedico;

        return $this;
    }

    /**
     * Get idcentromedico
     *
     * @return \OpsuHcmBundle\Entity\CentroMedico 
     */
    public function getIdcentromedico()
    {
        return $this->idcentromedico;
    }

    /**
     * Set idregistrosolicitud
     *
     * @param \OpsuHcmBundle\Entity\RegistroSolicitud $idregistrosolicitud
     * @return ReembolsoSolicitud
     */
    public function setIdregistrosolicitud(\OpsuHcmBundle\Entity\RegistroSolicitud $idregistrosolicitud = null)
    {
        $this->idregistrosolicitud = $idregistrosolicitud;

        return $this;
    }

    /**
     * Get idregistrosolicitud
     *
     * @return \OpsuHcmBundle\Entity\RegistroSolicitud 
     */
    public function getIdregistrosolicitud()
    {
        return $this->idregistrosolicitud;
    }
}
