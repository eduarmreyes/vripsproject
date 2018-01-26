<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Lineas
 *
 * @ORM\Table(name="lineas")
 * @ORM\Entity
 */
class Lineas
{
    /**
     * @var string
     *
     * @ORM\Column(name="nombre_linea", type="string", length=200, nullable=false)
     */
    private $nombreLinea;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_linea", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idLinea;


}

