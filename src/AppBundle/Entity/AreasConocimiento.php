<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * AreasConocimiento
 *
 * @ORM\Table(name="areas_conocimiento")
 * @ORM\Entity
 */
class AreasConocimiento
{
    /**
     * @var string
     *
     * @ORM\Column(name="nombre_area", type="string", length=200, nullable=false)
     */
    private $nombreArea;

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;


}

