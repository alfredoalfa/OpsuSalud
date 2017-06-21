<?php

namespace OpsuHcmBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Tiposolicitud
 *
 * @ORM\Table(name="tiposolicitud")
 * @ORM\Entity
 */
class Tiposolicitud
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="tiposolicitud_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="tiposolicitud", type="string", length=50, nullable=true)
     */
    private $tiposolicitud;



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
     * Set tiposolicitud
     *
     * @param string $tiposolicitud
     * @return Tiposolicitud
     */
    public function setTiposolicitud($tiposolicitud)
    {
        $this->tiposolicitud = $tiposolicitud;

        return $this;
    }

    /**
     * Get tiposolicitud
     *
     * @return string 
     */
    public function getTiposolicitud()
    {
        return $this->tiposolicitud;
    }

         public function __toString(){
        return $this->tiposolicitud;
    }
}
