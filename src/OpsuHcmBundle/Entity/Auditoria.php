<?php

namespace OpsuHcmBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Auditoria
 *
 * @ORM\Table(name="auditoria")
 * @ORM\Entity
 */
class Auditoria
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="auditoria_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fecha_accion", type="date", nullable=true)
     */
    private $fechaAccion;

    /**
     * @var integer
     *
     * @ORM\Column(name="usuario_id", type="integer", nullable=false)
     */
    private $usuarioId;

    /**
     * @var string
     *
     * @ORM\Column(name="tabla", type="string", length=255, nullable=false)
     */
    private $tabla;

    /**
     * @var string
     *
     * @ORM\Column(name="accion", type="string", length=255, nullable=false)
     */
    private $accion;

    /**
     * @var string
     *
     * @ORM\Column(name="campo", type="string", length=255, nullable=false)
     */
    private $campo;

    /**
     * @var string
     *
     * @ORM\Column(name="descripcion", type="string", length=255, nullable=false)
     */
    private $descripcion;



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
     * Set fechaAccion
     *
     * @param \DateTime $fechaAccion
     * @return Auditoria
     */
    public function setFechaAccion($fechaAccion)
    {
        $this->fechaAccion = $fechaAccion;

        return $this;
    }

    /**
     * Get fechaAccion
     *
     * @return \DateTime 
     */
    public function getFechaAccion()
    {
        return $this->fechaAccion;
    }

    /**
     * Set usuarioId
     *
     * @param integer $usuarioId
     * @return Auditoria
     */
    public function setUsuarioId($usuarioId)
    {
        $this->usuarioId = $usuarioId;

        return $this;
    }

    /**
     * Get usuarioId
     *
     * @return integer 
     */
    public function getUsuarioId()
    {
        return $this->usuarioId;
    }

    /**
     * Set tabla
     *
     * @param string $tabla
     * @return Auditoria
     */
    public function setTabla($tabla)
    {
        $this->tabla = $tabla;

        return $this;
    }

    /**
     * Get tabla
     *
     * @return string 
     */
    public function getTabla()
    {
        return $this->tabla;
    }

    /**
     * Set accion
     *
     * @param string $accion
     * @return Auditoria
     */
    public function setAccion($accion)
    {
        $this->accion = $accion;

        return $this;
    }

    /**
     * Get accion
     *
     * @return string 
     */
    public function getAccion()
    {
        return $this->accion;
    }

    /**
     * Set campo
     *
     * @param string $campo
     * @return Auditoria
     */
    public function setCampo($campo)
    {
        $this->campo = $campo;

        return $this;
    }

    /**
     * Get campo
     *
     * @return string 
     */
    public function getCampo()
    {
        return $this->campo;
    }

    /**
     * Set descripcion
     *
     * @param string $descripcion
     * @return Auditoria
     */
    public function setDescripcion($descripcion)
    {
        $this->descripcion = $descripcion;

        return $this;
    }

    /**
     * Get descripcion
     *
     * @return string 
     */
    public function getDescripcion()
    {
        return $this->descripcion;
    }
}
