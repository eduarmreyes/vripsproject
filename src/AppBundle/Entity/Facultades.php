<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Facultades
 *
 * @ORM\Table(name="facultades")
 * @ORM\Entity
 */
class Facultades
{
    /**
     * @var string
     *
     * @ORM\Column(name="nombre_facultad", type="string", length=200, nullable=false)
     */
    private $nombreFacultad;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_faacultad", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idFaacultad;


}

