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



class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
   public function indexAction(Request $request)
    {
        $user = $this->getUser();
        $roles = $user->getRoles();
    
        switch ($roles[0]) {
            case "ROLE_TEMPORAL":
                return $this->redirectToRoute('crearPersona');
                break;
            default:

            
               return $this->render('OpsuHcmBundle:Default:index.html.twig', array(
                    'user' => $this->getUser()));
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
}
