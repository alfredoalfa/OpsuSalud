<?php

namespace OpsuHcmBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Persona
 *
 * @ORM\Table(name="persona", indexes={@ORM\Index(name="IDX_51E5B69BD5B220CA", columns={"idnacionalidad"}), @ORM\Index(name="IDX_51E5B69B5DBCBF9D", columns={"idparroquia"})})
 * @ORM\Entity
 */
class Persona
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="persona_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="primer_apellido", type="string", length=50, nullable=true)
     */
    private $primerApellido;

    /**
     * @var string
     *
     * @ORM\Column(name="segundo_apellido", type="string", length=50, nullable=true)
     */
    private $segundoApellido;

    /**
     * @var string
     *
     * @ORM\Column(name="primer_nombre", type="string", length=50, nullable=true)
     */
    private $primerNombre;

    /**
     * @var string
     *
     * @ORM\Column(name="segundo_nombre", type="string", length=50, nullable=true)
     */
    private $segundoNombre;

    /**
     * @var integer
     *
     * @ORM\Column(name="cedula", type="integer", nullable=true)
     */
    private $cedula;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fecha_nacimiento", type="date", nullable=true)
     */
    private $fechaNacimiento;

    /**
     * @var string
     *
     * @ORM\Column(name="direccion", type="text", nullable=true)
     */
    private $direccion;

    /**
     * @var string
     *
     * @ORM\Column(name="genero", type="string", length=1, nullable=false)
     */
    private $genero;

    /**
     * @var string
     *
     * @ORM\Column(name="telefono_1", type="string", length=11, nullable=true)
     */
    private $telefono1;

    /**
     * @var string
     *
     * @ORM\Column(name="telefono_2", type="string", length=11, nullable=true)
     */
    private $telefono2;

    /**
     * @var string
     *
     * @ORM\Column(name="cedula_ruta", type="string", length=255, nullable=false)
     */
    private $cedulaRuta;

    /**
     * @var string
     *
     * @ORM\Column(name="carnet_ruta", type="string", length=255, nullable=false)
     */
    private $carnetRuta;

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
     * @var \Nacionalidad
     *
     * @ORM\ManyToOne(targetEntity="Nacionalidad")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="idnacionalidad", referencedColumnName="id")
     * })
     */
    private $idnacionalidad;

    /**
     * @var \Parroquia
     *
     * @ORM\ManyToOne(targetEntity="Parroquia")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="idparroquia", referencedColumnName="id")
     * })
     */
    private $idparroquia;



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
     * Set primerApellido
     *
     * @param string $primerApellido
     * @return Persona
     */
    public function setPrimerApellido($primerApellido)
    {
        $this->primerApellido = $primerApellido;

        return $this;
    }

    /**
     * Get primerApellido
     *
     * @return string 
     */
    public function getPrimerApellido()
    {
        return $this->primerApellido;
    }

    /**
     * Set segundoApellido
     *
     * @param string $segundoApellido
     * @return Persona
     */
    public function setSegundoApellido($segundoApellido)
    {
        $this->segundoApellido = $segundoApellido;

        return $this;
    }

    /**
     * Get segundoApellido
     *
     * @return string 
     */
    public function getSegundoApellido()
    {
        return $this->segundoApellido;
    }

    /**
     * Set primerNombre
     *
     * @param string $primerNombre
     * @return Persona
     */
    public function setPrimerNombre($primerNombre)
    {
        $this->primerNombre = $primerNombre;

        return $this;
    }

    /**
     * Get primerNombre
     *
     * @return string 
     */
    public function getPrimerNombre()
    {
        return $this->primerNombre;
    }

    /**
     * Set segundoNombre
     *
     * @param string $segundoNombre
     * @return Persona
     */
    public function setSegundoNombre($segundoNombre)
    {
        $this->segundoNombre = $segundoNombre;

        return $this;
    }

    /**
     * Get segundoNombre
     *
     * @return string 
     */
    public function getSegundoNombre()
    {
        return $this->segundoNombre;
    }

    /**
     * Set cedula
     *
     * @param integer $cedula
     * @return Persona
     */
    public function setCedula($cedula)
    {
        $this->cedula = $cedula;

        return $this;
    }

    /**
     * Get cedula
     *
     * @return integer 
     */
    public function getCedula()
    {
        return $this->cedula;
    }

    /**
     * Set fechaNacimiento
     *
     * @param \DateTime $fechaNacimiento
     * @return Persona
     */
    public function setFechaNacimiento($fechaNacimiento)
    {
        $this->fechaNacimiento = $fechaNacimiento;

        return $this;
    }

    /**
     * Get fechaNacimiento
     *
     * @return \DateTime 
     */
    public function getFechaNacimiento()
    {
        return $this->fechaNacimiento;
    }

    /**
     * Set direccion
     *
     * @param string $direccion
     * @return Persona
     */
    public function setDireccion($direccion)
    {
        $this->direccion = $direccion;

        return $this;
    }

    /**
     * Get direccion
     *
     * @return string 
     */
    public function getDireccion()
    {
        return $this->direccion;
    }

    /**
     * Set genero
     *
     * @param string $genero
     * @return Persona
     */
    public function setGenero($genero)
    {
        $this->genero = $genero;

        return $this;
    }

    /**
     * Get genero
     *
     * @return string 
     */
    public function getGenero()
    {
        return $this->genero;
    }

    /**
     * Set telefono1
     *
     * @param string $telefono1
     * @return Persona
     */
    public function setTelefono1($telefono1)
    {
        $this->telefono1 = $telefono1;

        return $this;
    }

    /**
     * Get telefono1
     *
     * @return string 
     */
    public function getTelefono1()
    {
        return $this->telefono1;
    }

    /**
     * Set telefono2
     *
     * @param string $telefono2
     * @return Persona
     */
    public function setTelefono2($telefono2)
    {
        $this->telefono2 = $telefono2;

        return $this;
    }

    /**
     * Get telefono2
     *
     * @return string 
     */
    public function getTelefono2()
    {
        return $this->telefono2;
    }

    /**
     * Set cedulaRuta
     *
     * @param string $cedulaRuta
     * @return Persona
     */
    public function setCedulaRuta($cedulaRuta)
    {
        $this->cedulaRuta = $cedulaRuta;

        return $this;
    }

    /**
     * Get cedulaRuta
     *
     * @return string 
     */
    public function getCedulaRuta()
    {
        return $this->cedulaRuta;
    }

    /**
     * Set carnetRuta
     *
     * @param string $carnetRuta
     * @return Persona
     */
    public function setCarnetRuta($carnetRuta)
    {
        $this->carnetRuta = $carnetRuta;

        return $this;
    }

    /**
     * Get carnetRuta
     *
     * @return string 
     */
    public function getCarnetRuta()
    {
        return $this->carnetRuta;
    }

    /**
     * Set idusuario
     *
     * @param integer $idusuario
     * @return Persona
     */
    public function setIdUsuario(\AppBundle\Entity\User $idUsuario = null)
    {
        $this->idusuario = $idusuario;

        return $this;
    }

/**
     * Get idusuario
     *
     * @return \OpsuHcmBundle\Entity\User
     */
    public function getIdusuario()
    {
        return $this->idusuario;
    }

    /**
     * Set idnacionalidad
     *
     * @param \OpsuHcmBundle\Entity\Nacionalidad $idnacionalidad
     * @return Persona
     */
    public function setIdnacionalidad(\OpsuHcmBundle\Entity\Nacionalidad $idnacionalidad = null)
    {
        $this->idnacionalidad = $idnacionalidad;

        return $this;
    }

    /**
     * Get idnacionalidad
     *
     * @return \OpsuHcmBundle\Entity\Nacionalidad 
     */
    public function getIdnacionalidad()
    {
        return $this->idnacionalidad;
    }

    /**
     * Set idparroquia
     *
     * @param \OpsuHcmBundle\Entity\Parroquia $idparroquia
     * @return Persona
     */
    public function setIdparroquia(\OpsuHcmBundle\Entity\Parroquia $idparroquia = null)
    {
        $this->idparroquia = $idparroquia;

        return $this;
    }

    /**
     * Get idparroquia
     *
     * @return \OpsuHcmBundle\Entity\Parroquia 
     */
    public function getIdparroquia()
    {
        return $this->idparroquia;
    }
    
    public function __toString(){
        return $this->idparroquia;
    }
}
