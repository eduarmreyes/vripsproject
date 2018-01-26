<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Matriz
 *
 * @ORM\Table(name="matriz", indexes={@ORM\Index(name="fk_proyecto_matriz", columns={"id_proyecto"})})
 * @ORM\Entity
 */
class Matriz
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id_matriz", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idMatriz;

    /**
     * @var \AppBundle\Entity\Proyectos
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Proyectos")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_proyecto", referencedColumnName="id_proyecto")
     * })
     */
    private $idProyecto;


}

