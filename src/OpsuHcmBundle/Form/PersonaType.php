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
        $builder->add('primerApellido')->add('segundoApellido')->add('primerNombre')->add('segundoNombre')->add('cedula')->add('fechaNacimiento')->add('direccion')->add('genero')->add('telefono1')->add('telefono2')->add('cedulaRuta')->add('carnetRuta')->add('idusuario')->add('idnacionalidad')->add('idparroquia');
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
