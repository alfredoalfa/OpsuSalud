<?php

namespace OpsuHcmBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class SolicitudType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
        ->add('idtitular', 'entity', array(
             'class' => 'OpsuHcmBundle:Titular',
              'empty_value' => 'Seleccione...'))
        ->add('idtiposolicitud', 'entity', array(
             'class' => 'OpsuHcmBundle:Solicitud',
              'empty_value' => 'Seleccione...'))
        ->add('observacion');
    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'OpsuHcmBundle\Entity\Solicitud'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'opsuhcmbundle_solicitud';
    }


}
