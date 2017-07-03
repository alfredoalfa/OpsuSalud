<?php

namespace OpsuHcmBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * CasosAsignado
 *
 * @ORM\Table(name="casos_asignado", indexes={@ORM\Index(name="idx_59573d39e8c9d535", columns={"idsolicitud"}), @ORM\Index(name="idx_59573d39f62ac5f6", columns={"idanalista"})})
 * @ORM\Entity(repositoryClass="OpsuHcmBundle\Repository\CasosAsignadoRepository")
 */
class CasosAsignado
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="casos_asignado_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var \FosUser
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\User",cascade={"persist"})
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="idanalista", referencedColumnName="id")
     * })
     */
    private $idanalista;

    /**
     * @var boolean
     *
     * @ORM\Column(name="completado", type="boolean", nullable=false)
     */
    private $completado;

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
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set completado
     *
     * @param boolean $completado
     * @return CasosAsignado
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
     * Set idsolicitud
     *
     * @param \OpsuHcmBundle\Entity\Solicitud $idsolicitud
     * @return CasosAsignado
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
     * Set idanalista
     *
     * @param \AppBundle\Entity\User $idanalista
     * @return CasosAsignado
     */
    public function setIdanalista(\AppBundle\Entity\User $idanalista = null)
    {
        $this->idanalista = $idanalista;

        return $this;
    }

    /**
     * Get idanalista
     *
     * @return \AppBundle\Entity\User 
     */
    public function getIdanalista()
    {
        return $this->idanalista;
    }
}
