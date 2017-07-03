<?php

namespace OpsuHcmBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\FormEvents;
use Doctrine\ORM\EntityRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Security\Core\SecurityContext;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Vich\UploaderBundle\Form\Type\VichImageType;

class PersonaType extends AbstractType
{

    private $securityContext;

    public function __construct(SecurityContext $securityContext)
    {
        $this->securityContext = $securityContext;
    }
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        // Current logged user
        $user = $this->securityContext->getToken()->getUser();

        $builder
        ->add('primerApellido')
        ->add('segundoApellido')
        ->add('primerNombre')
        ->add('segundoNombre')
        ->add('cedula')
        ->add('fechaNacimiento', 'date', array(
                'label'=>'Fecha De Nacimiento:',
                'widget' => 'single_text',
                'format' => 'yyyy-MM-dd', 
                'attr' => array(
                    'class' => 'datepicker',
                    'placeholder'=>'Indique la Fecha Nacimiento')))
        ->add('direccion')
        ->add('genero', 'choice'/*ChoiceType::class*/, array(
                'choices' => array(
                    'M'=>'Masculino',
                    'F'=>'Femenino'),
                'required'    => true,
            ))
        ->add('telefono1')
        ->add('cedulaFile', FileType::class, array('label' => 'Copia de la ceula (JPG archivo)'))
        ->add('carnetFile', FileType::class, array('label' => 'Copia del Carnet (JPG archivo)'))
        ->add('idnacionalidad')
        ->add('idparentesco')
        

         // ->add('idusuario', EntityType::class, array(
         //        'class' => 'AppBundle:User',
         //        'query_builder' => function (EntityRepository $er) {
         //            return $er->createQueryBuilder('u')
         //                ->orderBy('u.username', 'ASC')
         //                ->where('u.id = :idusuario')
         //                ->setParameter('idusuario',$this->securityContext->getToken()->getUser()); 
         //        },
         //        'label'=>'Titular',
         //    ))

        ->add('idEstado', 'entity', array(
            'class' => 'OpsuHcmBundle:Estado',
            'empty_value' => 'Seleccione...',
            'label'=>'Estado',
            "mapped" => false
        ))

        ->add('idMunicipio', 'entity', array(
            'class' => 'OpsuHcmBundle:Municipio',
            'empty_value' => 'Seleccione...',
            'label'=>'Municipio',
            "mapped" => false
        ))

        ->add('idparroquia', 'entity', array(
            'class' => 'OpsuHcmBundle:Parroquia',
            'empty_value' => 'Seleccione...',
            'label'=>'Parroquia',
        ));

    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'OpsuHcmBundle\Entity\Persona'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'opsuhcmbundle_persona';
    }

    

}
