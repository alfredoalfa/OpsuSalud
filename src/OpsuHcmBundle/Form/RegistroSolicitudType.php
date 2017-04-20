<?php

namespace OpsuHcmBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class RegistroSolicitudType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('centroMedico')->add('tratamiento')->add('montoSolicitado')->add('observacion')->add('informeMedicoRuta')->add('presupuestoRuta')->add('fechaAprobado')->add('completado')->add('idestatus')->add('idpaciente')->add('idpatologia')->add('idsolicitud')->add('idtiposolicitud')->add('idtitular');
    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'OpsuHcmBundle\Entity\RegistroSolicitud'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'opsuhcmbundle_registrosolicitud';
    }


}
