<?php

namespace OpsuHcmBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Titular
 *
 * @ORM\Table(name="titular", indexes={@ORM\Index(name="IDX_79231BC78EE1E4F5", columns={"idpersona"})})
 * @ORM\Entity
 */
class Titular
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="titular_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var \Persona
     *
     * @ORM\ManyToOne(targetEntity="Persona")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="idpersona", referencedColumnName="id")
     * })
     */
    private $idpersona;



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
     * Set idpersona
     *
     * @param \OpsuHcmBundle\Entity\Persona $idpersona
     * @return Titular
     */
    public function setIdpersona(\OpsuHcmBundle\Entity\Persona $idpersona = null)
    {
        $this->idpersona = $idpersona;

        return $this;
    }

    /**
     * Get idpersona
     *
     * @return \OpsuHcmBundle\Entity\Persona 
     */
    public function getIdpersona()
    {
        return $this->idpersona;
    }
}
