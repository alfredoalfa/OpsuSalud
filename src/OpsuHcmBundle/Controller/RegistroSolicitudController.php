<?php

namespace OpsuHcmBundle\Controller;

use OpsuHcmBundle\Entity\RegistroSolicitud;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;use Symfony\Component\HttpFoundation\Request;

/**
 * Registrosolicitud controller.
 *
 * @Route("registrosolicitud")
 */
class RegistroSolicitudController extends Controller
{
    /**
     * Lists all registroSolicitud entities.
     *
     * @Route("/", name="registrosolicitud_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $registroSolicituds = $em->getRepository('OpsuHcmBundle:RegistroSolicitud')->findAll();

        return $this->render('registrosolicitud/index.html.twig', array(
            'registroSolicituds' => $registroSolicituds,
        ));
    }

    /**
     * Creates a new registroSolicitud entity.
     *
     * @Route("/new", name="registrosolicitud_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $registroSolicitud = new Registrosolicitud();
        $form = $this->createForm('OpsuHcmBundle\Form\RegistroSolicitudType', $registroSolicitud);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($registroSolicitud);
            $em->flush();

            return $this->redirectToRoute('registrosolicitud_show', array('id' => $registroSolicitud->getId()));
        }

        return $this->render('registrosolicitud/new.html.twig', array(
            'registroSolicitud' => $registroSolicitud,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a registroSolicitud entity.
     *
     * @Route("/{id}", name="registrosolicitud_show")
     * @Method("GET")
     */
    public function showAction(RegistroSolicitud $registroSolicitud)
    {
        $deleteForm = $this->createDeleteForm($registroSolicitud);

        return $this->render('registrosolicitud/show.html.twig', array(
            'registroSolicitud' => $registroSolicitud,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing registroSolicitud entity.
     *
     * @Route("/{id}/edit", name="registrosolicitud_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, RegistroSolicitud $registroSolicitud)
    {
        $deleteForm = $this->createDeleteForm($registroSolicitud);
        $editForm = $this->createForm('OpsuHcmBundle\Form\RegistroSolicitudType', $registroSolicitud);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('registrosolicitud_edit', array('id' => $registroSolicitud->getId()));
        }

        return $this->render('registrosolicitud/edit.html.twig', array(
            'registroSolicitud' => $registroSolicitud,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a registroSolicitud entity.
     *
     * @Route("/{id}", name="registrosolicitud_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, RegistroSolicitud $registroSolicitud)
    {
        $form = $this->createDeleteForm($registroSolicitud);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($registroSolicitud);
            $em->flush();
        }

        return $this->redirectToRoute('registrosolicitud_index');
    }

    /**
     * Creates a form to delete a registroSolicitud entity.
     *
     * @param RegistroSolicitud $registroSolicitud The registroSolicitud entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(RegistroSolicitud $registroSolicitud)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('registrosolicitud_delete', array('id' => $registroSolicitud->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
