<?php

namespace OpsuHcmBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Afiliado
 *
 * @ORM\Table(name="afiliado", indexes={@ORM\Index(name="IDX_319B09B953B72D2C", columns={"idparentesco"}), @ORM\Index(name="IDX_319B09B98EE1E4F5", columns={"idpersona"}), @ORM\Index(name="IDX_319B09B9A62749A9", columns={"idtitular"})})
 * @ORM\Entity
 */
class Afiliado
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="afiliado_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var \Parentesco
     *
     * @ORM\ManyToOne(targetEntity="Parentesco")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="idparentesco", referencedColumnName="id")
     * })
     */
    private $idparentesco;

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
     * Set idparentesco
     *
     * @param \OpsuHcmBundle\Entity\Parentesco $idparentesco
     * @return Afiliado
     */
    public function setIdparentesco(\OpsuHcmBundle\Entity\Parentesco $idparentesco = null)
    {
        $this->idparentesco = $idparentesco;

        return $this;
    }

    /**
     * Get idparentesco
     *
     * @return \OpsuHcmBundle\Entity\Parentesco 
     */
    public function getIdparentesco()
    {
        return $this->idparentesco;
    }

    /**
     * Set idpersona
     *
     * @param \OpsuHcmBundle\Entity\Persona $idpersona
     * @return Afiliado
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
     * Set idtitular
     *
     * @param \OpsuHcmBundle\Entity\Titular $idtitular
     * @return Afiliado
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
