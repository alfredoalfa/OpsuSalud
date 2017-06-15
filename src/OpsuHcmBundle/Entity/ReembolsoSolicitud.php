<?php

namespace OpsuHcmBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ReembolsoSolicitud
 *
 * @ORM\Table(name="reembolso_solicitud")
 * @ORM\Entity(repositoryClass="OpsuHcmBundle\Repository\ReembolsoSolicitudRepository")
 */
class ReembolsoSolicitud
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var \RegistroSolicitud
     *
     * @ORM\ManyToOne(targetEntity="RegistroSolicitud")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="idregistrosolicitud", referencedColumnName="id")
     * })
     */
    private $idregistroSolicitud;

    /**
     * @var \CentroMedico
     *
     * @ORM\ManyToOne(targetEntity="CentroMedico")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="idcentromedico", referencedColumnName="id")
     * })
     */
    private $idcentroMedico;


    /**
     * @ORM\Column(type="decimal", scale=2)
     */
    private $montoSolicitado;

     /**
     * @var string
     *
     * @ORM\Column(name="presupuesto_recibo_ruta", type="text", nullable=true)
     */
    private $presupuestoReciboRuta;

    /**
     * @ORM\Column(type="decimal", scale=2)
     */
    private $montoAprobado;


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
     * Set idregistroSolicitud
     *
     * @param \OpsuHcmBundle\Entity\RegistroSolicitud $idregistroSolicitud
     * @return ReembolsoSolicitud
     */
    public function setIdregistroSolicitud(\OpsuHcmBundle\Entity\RegistroSolicitud $idregistroSolicitud = null)
    {
        $this->idregistroSolicitud = $idregistroSolicitud;

        return $this;
    }

    /**
     * Get idregistroSolicitud
     *
     * @return \OpsuHcmBundle\Entity\RegistroSolicitud 
     */
    public function getIdregistroSolicitud()
    {
        return $this->idregistroSolicitud;
    }

    /**
     * Set idcentroMedico
     *
     * @param \OpsuHcmBundle\Entity\CentroMedico $idcentroMedico
     * @return ReembolsoSolicitud
     */
    public function setIdcentroMedico(\OpsuHcmBundle\Entity\CentroMedico $idcentroMedico = null)
    {
        $this->idcentroMedico = $idcentroMedico;

        return $this;
    }

    /**
     * Get idcentroMedico
     *
     * @return \OpsuHcmBundle\Entity\CentroMedico 
     */
    public function getIdcentroMedico()
    {
        return $this->idcentroMedico;
    }
}
