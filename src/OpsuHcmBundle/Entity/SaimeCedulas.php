<?php

namespace OpsuHcmBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * SaimeCedulas
 *
 * @ORM\Table(name="saime_cedulas")
 * @ORM\Entity(repositoryClass="OpsuHcmBundle\Repository\SaimeCedulasRepository")
 */
class SaimeCedulas
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="saime_cedulas_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="letra", type="string", length=255, nullable=true)
     */
    private $letra;

    /**
     * @var integer
     *
     * @ORM\Column(name="numcedula", type="integer", nullable=true)
     */
    private $numcedula;

    /**
     * @var string
     *
     * @ORM\Column(name="paisorigen", type="string", length=1, nullable=true)
     */
    private $paisorigen;

    /**
     * @var string
     *
     * @ORM\Column(name="nacionalidad", type="string", length=255, nullable=true)
     */
    private $nacionalidad;

    /**
     * @var string
     *
     * @ORM\Column(name="primernombre", type="string", length=255, nullable=true)
     */
    private $primernombre;

    /**
     * @var string
     *
     * @ORM\Column(name="segundonombre", type="string", length=255, nullable=true)
     */
    private $segundonombre;

    /**
     * @var string
     *
     * @ORM\Column(name="primerapellido", type="string", length=255, nullable=true)
     */
    private $primerapellido;

    /**
     * @var string
     *
     * @ORM\Column(name="segundoapellido", type="string", length=255, nullable=true)
     */
    private $segundoapellido;

    /**
     * @var string
     *
     * @ORM\Column(name="fechanac", type="string", length=255, nullable=true)
     */
    private $fechanac;

    /**
     * @var string
     *
     * @ORM\Column(name="fechacedorg", type="string", length=1, nullable=true)
     */
    private $fechacedorg;

    /**
     * @var string
     *
     * @ORM\Column(name="codobjecion", type="string", length=1, nullable=true)
     */
    private $codobjecion;

    /**
     * @var string
     *
     * @ORM\Column(name="codoficina", type="string", length=1, nullable=true)
     */
    private $codoficina;

    /**
     * @var string
     *
     * @ORM\Column(name="codestadocivil", type="string", length=255, nullable=true)
     */
    private $codestadocivil;

    /**
     * @var string
     *
     * @ORM\Column(name="naturalizado", type="string", length=255, nullable=true)
     */
    private $naturalizado;

    /**
     * @var string
     *
     * @ORM\Column(name="sexo", type="string", length=255, nullable=true)
     */
    private $sexo;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fecha_creacion", type="datetime", nullable=false)
     */
    private $fechaCreacion;

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
     * Set letra
     *
     * @param string $letra
     * @return SaimeCedulas
     */
    public function setLetra($letra)
    {
        $this->letra = $letra;

        return $this;
    }

    /**
     * Get letra
     *
     * @return string 
     */
    public function getLetra()
    {
        return $this->letra;
    }

    /**
     * Set numcedula
     *
     * @param integer $numcedula
     * @return SaimeCedulas
     */
    public function setNumcedula($numcedula)
    {
        $this->numcedula = $numcedula;

        return $this;
    }

    /**
     * Get numcedula
     *
     * @return integer 
     */
    public function getNumcedula()
    {
        return $this->numcedula;
    }

    /**
     * Set paisorigen
     *
     * @param string $paisorigen
     * @return SaimeCedulas
     */
    public function setPaisorigen($paisorigen)
    {
        $this->paisorigen = $paisorigen;

        return $this;
    }

    /**
     * Get paisorigen
     *
     * @return string 
     */
    public function getPaisorigen()
    {
        return $this->paisorigen;
    }

    /**
     * Set nacionalidad
     *
     * @param string $nacionalidad
     * @return SaimeCedulas
     */
    public function setNacionalidad($nacionalidad)
    {
        $this->nacionalidad = $nacionalidad;

        return $this;
    }

    /**
     * Get nacionalidad
     *
     * @return string 
     */
    public function getNacionalidad()
    {
        return $this->nacionalidad;
    }

    /**
     * Set primernombre
     *
     * @param string $primernombre
     * @return SaimeCedulas
     */
    public function setPrimernombre($primernombre)
    {
        $this->primernombre = $primernombre;

        return $this;
    }

    /**
     * Get primernombre
     *
     * @return string 
     */
    public function getPrimernombre()
    {
        return $this->primernombre;
    }

    /**
     * Set segundonombre
     *
     * @param string $segundonombre
     * @return SaimeCedulas
     */
    public function setSegundonombre($segundonombre)
    {
        $this->segundonombre = $segundonombre;

        return $this;
    }

    /**
     * Get segundonombre
     *
     * @return string 
     */
    public function getSegundonombre()
    {
        return $this->segundonombre;
    }

    /**
     * Set primerapellido
     *
     * @param string $primerapellido
     * @return SaimeCedulas
     */
    public function setPrimerapellido($primerapellido)
    {
        $this->primerapellido = $primerapellido;

        return $this;
    }

    /**
     * Get primerapellido
     *
     * @return string 
     */
    public function getPrimerapellido()
    {
        return $this->primerapellido;
    }

    /**
     * Set segundoapellido
     *
     * @param string $segundoapellido
     * @return SaimeCedulas
     */
    public function setSegundoapellido($segundoapellido)
    {
        $this->segundoapellido = $segundoapellido;

        return $this;
    }

    /**
     * Get segundoapellido
     *
     * @return string 
     */
    public function getSegundoapellido()
    {
        return $this->segundoapellido;
    }

    /**
     * Set fechanac
     *
     * @param string $fechanac
     * @return SaimeCedulas
     */
    public function setFechanac($fechanac)
    {
        $this->fechanac = $fechanac;

        return $this;
    }

    /**
     * Get fechanac
     *
     * @return string 
     */
    public function getFechanac()
    {
        return $this->fechanac;
    }

    /**
     * Set fechacedorg
     *
     * @param string $fechacedorg
     * @return SaimeCedulas
     */
    public function setFechacedorg($fechacedorg)
    {
        $this->fechacedorg = $fechacedorg;

        return $this;
    }

    /**
     * Get fechacedorg
     *
     * @return string 
     */
    public function getFechacedorg()
    {
        return $this->fechacedorg;
    }

    /**
     * Set codobjecion
     *
     * @param string $codobjecion
     * @return SaimeCedulas
     */
    public function setCodobjecion($codobjecion)
    {
        $this->codobjecion = $codobjecion;

        return $this;
    }

    /**
     * Get codobjecion
     *
     * @return string 
     */
    public function getCodobjecion()
    {
        return $this->codobjecion;
    }

    /**
     * Set codoficina
     *
     * @param string $codoficina
     * @return SaimeCedulas
     */
    public function setCodoficina($codoficina)
    {
        $this->codoficina = $codoficina;

        return $this;
    }

    /**
     * Get codoficina
     *
     * @return string 
     */
    public function getCodoficina()
    {
        return $this->codoficina;
    }

    /**
     * Set codestadocivil
     *
     * @param string $codestadocivil
     * @return SaimeCedulas
     */
    public function setCodestadocivil($codestadocivil)
    {
        $this->codestadocivil = $codestadocivil;

        return $this;
    }

    /**
     * Get codestadocivil
     *
     * @return string 
     */
    public function getCodestadocivil()
    {
        return $this->codestadocivil;
    }

    /**
     * Set naturalizado
     *
     * @param string $naturalizado
     * @return SaimeCedulas
     */
    public function setNaturalizado($naturalizado)
    {
        $this->naturalizado = $naturalizado;

        return $this;
    }

    /**
     * Get naturalizado
     *
     * @return string 
     */
    public function getNaturalizado()
    {
        return $this->naturalizado;
    }

    /**
     * Set sexo
     *
     * @param string $sexo
     * @return SaimeCedulas
     */
    public function setSexo($sexo)
    {
        $this->sexo = $sexo;

        return $this;
    }

    /**
     * Get sexo
     *
     * @return string 
     */
    public function getSexo()
    {
        return $this->sexo;
    }

    /**
     * Set fechaCreacion
     *
     * @param \DateTime $fechaCreacion
     * @return SaimeCedulas
     */
    public function setFechaCreacion($fechaCreacion)
    {
        $this->fechaCreacion = $fechaCreacion;

        return $this;
    }

    /**
     * Get fechaCreacion
     *
     * @return \DateTime 
     */
    public function getFechaCreacion()
    {
        return $this->fechaCreacion;
    }
}
