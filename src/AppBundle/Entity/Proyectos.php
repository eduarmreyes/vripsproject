<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Proyectos
 *
 * @ORM\Table(name="proyectos")
 * @ORM\Entity
 */
class Proyectos
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id_matriz", type="integer", nullable=false)
     */
    private $idMatriz;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_perfil", type="integer", nullable=false)
     */
    private $idPerfil;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_cronograma", type="integer", nullable=false)
     */
    private $idCronograma;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_proyecto", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idProyecto;


}

