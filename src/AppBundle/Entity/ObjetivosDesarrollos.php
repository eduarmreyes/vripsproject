<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ObjetivosDesarrollos
 *
 * @ORM\Table(name="objetivos_desarrollos")
 * @ORM\Entity
 */
class ObjetivosDesarrollos
{
    /**
     * @var string
     *
     * @ORM\Column(name="nombre_objetuvo", type="string", length=200, nullable=false)
     */
    private $nombreObjetuvo;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_objetivo", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idObjetivo;


}

