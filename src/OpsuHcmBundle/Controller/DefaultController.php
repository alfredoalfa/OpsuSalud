<?php

namespace OpsuHcmBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\HttpFoundation\JsonResponse;
use OpsuHcmBundle\Entity\Estado;
use OpsuHcmBundle\Entity\Municipio;
use OpsuHcmBundle\Entity\Parroquia;
use OpsuHcmBundle\Entity\Solicitud;
use OpsuHcmBundle\Entity\Persona;
use OpsuHcmBundle\Entity\Parentesco;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;



class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
   public function indexAction(Request $request)
    {
        $user = $this->getUser();
        $roles = $user->getRoles();
        $userId = $user->getId();
    
        switch ($roles[0]) {
            case "ROLE_TEMPORAL":
                return $this->redirectToRoute('crearPersona');
                break;
            default:

        $solicitud = new Solicitud();
        $em = $this->getDoctrine()->getManager();
        
        $idPersona = $em->getRepository('OpsuHcmBundle:PersonaUser')->findBy(array('idusuario'=>$userId));
        $personas = $em->getRepository('OpsuHcmBundle:Persona')->findBy(array('id'=>$idPersona[0]->getIdpersona()->getId()));
         
        return $this->render('OpsuHcmBundle:Default:index.html.twig', array(
             'solicitud' => $solicitud));
        break;   
                }     
    }

    /**
     * @Route("/municipio", name="municipio")
     */
    public function municipioAction(Request $request) //municipio
    {
        $idMunicipio = $request->request->get('idMunicipio');

        $em = $this->getDoctrine()->getManager();

        $provinces =$em->getRepository('OpsuHcmBundle:Persona')->listaMunicipios($idMunicipio);

        return new JsonResponse($provinces);
    }

     /**
     * @Route("/parroquia", name="parroquia")
     */
    public function parroquiaAction(Request $request)//parroquia
    {
        $idMunicipio = $request->request->get('idMunicipio');

        $em = $this->getDoctrine()->getManager();

        $parroquia =$em->getRepository('OpsuHcmBundle:Persona')->listaParroquias($idMunicipio);

        return new JsonResponse($parroquia);
    }

    /**
     * @Route("/paciente", name="paciente")
     */
    public function pacienteAction(Request $request)
    {
        $idPaciente = $request->request->get('idPaciente');

        $em = $this->getDoctrine()->getManager();
        $pacientes =$em->getRepository('OpsuHcmBundle:Persona')->listaPacientes($idPaciente);

        return new JsonResponse($idPaciente);
    }

    /**
     * @Route("/listaParentesco", name="listaParentesco")
     */
    public function listaParentescoAction(Request $request)
    {
        $idTitular = $request->request->get('idTitular');
        $em = $this->getDoctrine()->getManager();
        $listaParentesco =$em->getRepository('OpsuHcmBundle:Persona')->listaParentescos($idTitular);

         return new JsonResponse($listaParentesco);
    }
}
