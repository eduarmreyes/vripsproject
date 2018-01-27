<?php
namespace AppBundle\Controller;
 
use AppBundle\Entity\AreasConocimiento;
use FOS\RestBundle\Controller\Annotations as Rest;
use FOS\RestBundle\Controller\FOSRestController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Serializer\Serializer;
use Symfony\Component\Serializer\Encoder\JsonEncoder;
use Symfony\Component\Serializer\Normalizer\ObjectNormalizer;



class ApiController extends FOSRestController
{
    /**
     * @Rest\Get("/")
     */
    public function indexAction(Request $request)
    {
        $data = ['hello' => 'world'];
        $view = $this->view($data, Response::HTTP_OK);
        return $view;
    }

    //Funcion que utilizamos para devolver una petición incorrecta
    private function badRequest($msg,$help=null)
    {
      return array(
        'mensage'=>$msg,
        'help'=>$help
      );
    }


     //Esta acción devuelve todas las areas de conocimiento
    public function GetAreasDeConocimientoAction()
    {
        $repository = $this->getDoctrine()->getRepository('AppBundle:AreasConocimiento');
        $empresas = $repository->findAll();
        //var_dump($empresas);
        $data = array('areas_conocimiento' => array());
        foreach ($empresas as $empresa) {
            $data['areas_conocimiento'][] = $this->serializeEmpresa($empresa);
        }
        $response = new JsonResponse($data, 200);
        return $response;
        //return $this->json($empresas);*/
    }
}