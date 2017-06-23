<?php

namespace OpsuHcmBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Afiliado
 *
 * @ORM\Table(name="afiliado")
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
     *   @ORM\JoinColumn(name="idafiliado", referencedColumnName="id")
     * })
     */
    private $idafiliado;

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
