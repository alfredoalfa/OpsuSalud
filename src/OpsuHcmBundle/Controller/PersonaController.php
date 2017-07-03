<?php

namespace OpsuHcmBundle\Controller;

use OpsuHcmBundle\Entity\Persona;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use OpsuHcmBundle\Entity\PersonaUser;
use OpsuHcmBundle\Entity\Afiliado;
use OpsuHcmBundle\Entity\Parentesco;
use AppBundle\Entity\User;

/**
 * Persona controller.
 *
 * @Route("persona")
 */
class PersonaController extends Controller
{
    /**
     * Lists all persona entities.
     *
     * @Route("/", name="persona_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $personas = $em->getRepository('OpsuHcmBundle:Persona')->findAll();

        return $this->render('persona/index.html.twig', array(
            'personas' => $personas,
        ));
    }

    /**
     * Creates a new persona entity.
     *
     * @Route("/new", name="persona_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $persona = new Persona();
        $form = $this->createForm('OpsuHcmBundle\Form\PersonaType', $persona);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($persona);
            $em->flush();

            return $this->redirectToRoute('persona_show', array('id' => $persona->getId()));
        }

        return $this->render('persona/new.html.twig', array(
            'persona' => $persona,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a persona entity.
     *
     * @Route("/{id}", name="persona_show")
     * @Method("GET")
     */
    public function showAction(Persona $persona)
    {
        $deleteForm = $this->createDeleteForm($persona);

        return $this->render('persona/show.html.twig', array(
            'persona' => $persona,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing persona entity.
     *
     * @Route("/{id}/edit", name="persona_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Persona $persona)
    {
        $deleteForm = $this->createDeleteForm($persona);
        $editForm = $this->createForm('OpsuHcmBundle\Form\PersonaType', $persona);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('persona_edit', array('id' => $persona->getId()));
        }

        return $this->render('persona/edit.html.twig', array(
            'persona' => $persona,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a persona entity.
     *
     * @Route("/{id}", name="persona_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Persona $persona)
    {
        $form = $this->createDeleteForm($persona);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($persona);
            $em->flush();
        }

        return $this->redirectToRoute('persona_index');
    }

    /**
     * Creates a form to delete a persona entity.
     *
     * @param Persona $persona The persona entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Persona $persona)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('persona_delete', array('id' => $persona->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }

    /**
     * Creates a new persona entity.
     *
     * @Route("/crearpersona/", name="crearPersona")
     * @Method({"GET", "POST"})
     */
    public function crearPersonaAction(Request $request)
    {
        $persona = new Persona();
        $personaUser = new PersonaUser();
        $afiliado= new Afiliado();
        $User= new User();
        $parentesco= new Parentesco();

        $em = $this->getDoctrine()->getManager();
        $form = $this->createForm($this->get('app.form.type.persona'), $persona);
        //$form = $this->createForm('OpsuHcmBundle\Form\PersonaType', $persona);      
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $em->persist($persona);
            $em->flush();

             $user = $this->getUser();
             $roles = $user->getRoles();
    
             if ($roles[0]=="ROLE_TEMPORAL") {
            
                    $idPersona = $this->getDoctrine()->getRepository('OpsuHcmBundle:Persona')->find($persona->getId());
                    $idUser = $this->getDoctrine()->getRepository('AppBundle:User')->find($user->getId());
                    $titular=$this->getDoctrine()->getRepository('OpsuHcmBundle:Parentesco')->findAll();

                    $personaUser->setIdpersona($idPersona);
                    $personaUser->setIdUsuario($idUser);

                    $persona = $em->getRepository('OpsuHcmBundle:Persona')->find($idPersona);
                    $persona->setIdparentesco($titular[4]);
                    $em->persist($persona);
                    $em->persist($personaUser); 
                    $em->flush();

                   return $this->redirectToRoute('persona_show', array('id' => $persona->getId()));      
             }

            return $this->redirectToRoute('persona_show', array('id' => $persona->getId()));
        }
       
        return $this->render('persona/crearPersona.html.twig', array(
            'persona' => $persona,
            'form' => $form->createView(),
        ));
    }

    /**
     * @Route("/afiliadoRegistro/", name="afiliadoRegistro")
     * @Method({"GET", "POST"})
     */
    public function afiliadoRegistroAction(Request $request)
    {
        $persona = new Persona();
        $personaUser = new PersonaUser();
        $afiliado= new Afiliado();
        $User= new User();
        $parentesco= new Parentesco();

        $user = $this->getUser();
        $userId = $user->getId();

        $em = $this->getDoctrine()->getManager();
        $idPersona = $em->getRepository('OpsuHcmBundle:PersonaUser')->findBy(array('idusuario'=>$userId));

        $personas = $em->getRepository('OpsuHcmBundle:Persona')->findBy(array('id'=>$idPersona[0]->getIdpersona()->getId()));
        $datosPersona=$idPersona[0]->getIdpersona();
        $titular=$datosPersona->getPrimerApellido().' '.$datosPersona->getPrimerNombre().' '.$datosPersona->getCedula();

        $titularPoliza= $em->getRepository('OpsuHcmBundle:Persona')->find($idPersona[0]->getIdpersona()->getId());

        $form = $this->createForm($this->get('app.form.type.persona'), $persona);
        $form->add('idparentesco');
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $em->persist($persona);
                         /////**relacionar el usuario activo con el afiliado que agrego**/////
            $afiliado->setIdafiliado($persona);
            $afiliado->setIdtitular($titularPoliza);

            $em->persist($afiliado);
            $em->flush();

 


            return $this->redirectToRoute('persona_show', array('id' => $persona->getId()));
        }
         return $this->render('persona/registroAfiliado.html.twig', array(
            'persona' => $persona,
             'titular'=> $titular,
            'form' => $form->createView(),
        ));
    }
}
