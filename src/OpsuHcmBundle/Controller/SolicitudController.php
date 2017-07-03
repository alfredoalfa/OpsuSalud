<?php

namespace OpsuHcmBundle\Controller;

use OpsuHcmBundle\Entity\Solicitud;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use OpsuHcmBundle\Entity\Persona;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

/**
 * Solicitud controller.
 *
 * @Route("solicitud")
 */
class SolicitudController extends Controller
{
    /**
     * Lists all solicitud entities.
     *
     * @Route("/", name="solicitud_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $solicituds = $em->getRepository('OpsuHcmBundle:Solicitud')->findAll();

        return $this->render('solicitud/index.html.twig', array(
            'solicituds' => $solicituds,
        ));
    }

    /**
     * Creates a new solicitud entity.
     *
     * @Route("/new", name="solicitud_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $user = $this->getUser();
        $userId = $user->getId();

        $solicitud = new Solicitud();
        $em = $this->getDoctrine()->getManager();

         $idPersona = $em->getRepository('OpsuHcmBundle:PersonaUser')->findBy(array('idusuario'=>$userId));
        //print_r(dump($userId));
        //print_r(dump($idPersona)); 
        //print_r(dump($idPersona[0]->getIdpersona()->getId()));

        $personas = $em->getRepository('OpsuHcmBundle:Persona')->findBy(array('id'=>$idPersona[0]->getIdpersona()->getId()));
        $datosPersona=$idPersona[0]->getIdpersona();
        $titular=$datosPersona->getPrimerApellido().' '.$datosPersona->getPrimerNombre().' '.$datosPersona->getCedula();
 
        $form = $this->createForm('OpsuHcmBundle\Form\SolicitudType', $solicitud);
        $form->handleRequest($request);

        // $form ->add('idtitular', EntityType::class, array(
        //                 'class' => 'OpsuHcmBundle:Persona',
        //                 'choices'  => array($personas[0]),
        //                     'label'=>'Titular',
        //                     ));

        if ($form->isSubmitted() && $form->isValid()) {

            $solicitud->setIdtitular($personas[0]);
            $solicitud->setCompletado(false);
            $solicitud->setFechaSolicitud(new \DateTime('now'));
            $em->persist($solicitud);  
            $em->flush();

            return $this->redirectToRoute('registrosolicitud_new', array('id' => $solicitud->getId()));
        }

        return $this->render('solicitud/new.html.twig', array(
            'solicitud' => $solicitud,
            'titular'=> $titular,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a solicitud entity.
     *
     * @Route("/{id}", name="solicitud_show")
     * @Method("GET")
     */
    public function showAction(Solicitud $solicitud)
    {
        $deleteForm = $this->createDeleteForm($solicitud);

        return $this->render('solicitud/show.html.twig', array(
            'solicitud' => $solicitud,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing solicitud entity.
     *
     * @Route("/{id}/edit", name="solicitud_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Solicitud $solicitud)
    {
        $deleteForm = $this->createDeleteForm($solicitud);
        $editForm = $this->createForm('OpsuHcmBundle\Form\SolicitudType', $solicitud);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('solicitud_edit', array('id' => $solicitud->getId()));
        }

        return $this->render('solicitud/edit.html.twig', array(
            'solicitud' => $solicitud,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a solicitud entity.
     *
     * @Route("/{id}", name="solicitud_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Solicitud $solicitud)
    {
        $form = $this->createDeleteForm($solicitud);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($solicitud);
            $em->flush();
        }

        return $this->redirectToRoute('solicitud_index');
    }

    /**
     * Creates a form to delete a solicitud entity.
     *
     * @param Solicitud $solicitud The solicitud entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Solicitud $solicitud)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('solicitud_delete', array('id' => $solicitud->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }

    /**
     * @Route("/generarSolicitud/", name="generarSolicitud")
     * @Method({"GET", "POST"})
     */
    public function generarSolicitudAction(Request $request)
    {
        $solicitud = new Solicitud();
        $form = $this->createForm('OpsuHcmBundle\Form\SolicitudType', $solicitud);
        $form->handleRequest($request);


        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($solicitud);
            $solicitud->setFechaSolicitud(new \DateTime('now'));

            print_r(dump($solicitud));
            die();       
            //$em->flush();

            $request->getSession()->getFlashBag()->add(
            'success',
            'Se ha registrado la salida del visitante '.$datosPersona[0]->getPrimerNombre().' '.$datosPersona[0]->getPrimerApellido().' '.'con el numero de cédula '.$datosPersona[0]->getCedula());
            return $this->redirectToRoute('solicitud_show', array('id' => $solicitud->getId()));
        }

            $request->getSession()->getFlashBag()->add(
            'danger',
            'No se ha resgistrado de forma correcta la solicitud debe intentarlo de nuevo.');

            return $this->redirectToRoute('homepage');
    }
}
