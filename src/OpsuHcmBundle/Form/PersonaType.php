<?php

namespace OpsuHcmBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class PersonaType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
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
        ->add('genero')
        ->add('telefono1')
        ->add('telefono2')
        ->add('cedulaRuta')
        ->add('carnetRuta')
        ->add('idnacionalidad')

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
