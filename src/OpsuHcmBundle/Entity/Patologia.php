<?php

namespace OpsuHcmBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Patologia
 *
 * @ORM\Table(name="patologia")
 * @ORM\Entity
 */
class Patologia
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="patologia_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="patologia", type="string", length=50, nullable=true)
     */
    private $patologia;



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
     * Set patologia
     *
     * @param string $patologia
     * @return Patologia
     */
    public function setPatologia($patologia)
    {
        $this->patologia = $patologia;

        return $this;
    }

    /**
     * Get patologia
     *
     * @return string 
     */
    public function getPatologia()
    {
        return $this->patologia;
    }
             public function __toString(){
        return $this->patologia;
    }
}
