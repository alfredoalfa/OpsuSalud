<?php

namespace OpsuHcmBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Afiliado
 *
 * @ORM\Table(name="afiliado", indexes={@ORM\Index(name="IDX_319B09B99B4E41B4", columns={"idafiliado"}), @ORM\Index(name="IDX_319B09B9A62749A9", columns={"idtitular"})})
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
     * @var \Persona
     *
     * @ORM\ManyToOne(targetEntity="Persona")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="idafiliado", referencedColumnName="id")
     * })
     */
    private $idafiliado;

    /**
     * @var \Persona
     *
     * @ORM\ManyToOne(targetEntity="Persona")
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
     * Set idafiliado
     *
     * @param \OpsuHcmBundle\Entity\Persona $idafiliado
     * @return Afiliado
     */
    public function setIdafiliado(\OpsuHcmBundle\Entity\Persona $idafiliado = null)
    {
        $this->idafiliado = $idafiliado;

        return $this;
    }

    /**
     * Get idafiliado
     *
     * @return \OpsuHcmBundle\Entity\Persona 
     */
    public function getIdafiliado()
    {
        return $this->idafiliado;
    }

    /**
     * Set idtitular
     *
     * @param \OpsuHcmBundle\Entity\Persona $idtitular
     * @return Afiliado
     */
    public function setIdtitular(\OpsuHcmBundle\Entity\Persona $idtitular = null)
    {
        $this->idtitular = $idtitular;

        return $this;
    }

    /**
     * Get idtitular
     *
     * @return \OpsuHcmBundle\Entity\Persona 
     */
    public function getIdtitular()
    {
        return $this->idtitular;
    }
}
