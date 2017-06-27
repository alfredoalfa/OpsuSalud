<?php

namespace OpsuHcmBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * PersonaUser
 *
 * @ORM\Table(name="persona_user")
 * @ORM\Entity(repositoryClass="OpsuHcmBundle\Repository\PersonaUserRepository")
 */
class PersonaUser
{
   /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="persona_user_id_seq", allocationSize=1, initialValue=1)
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
     * @var \FosUser
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\User",cascade={"persist"})
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="idusuario", referencedColumnName="id")
     * })
     */
    private $idusuario;


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


    /**
     * Set idusuario
     *
     * @param \AppBundle\Entity\User $idusuario
     * @return Persona
     */
    public function setIdUsuario(\AppBundle\Entity\User $idusuario = null)
    {    
        $this->idusuario = $idusuario;

        return $this;
    }

    /**
     * Get idusuario
     *
     * @return \AppBundle\Entity\User
     */
    public function getIdusuario()
    {
        return $this->idusuario;
    }

}
