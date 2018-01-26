<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Resultados
 *
 * @ORM\Table(name="resultados", indexes={@ORM\Index(name="fk_resultado_matriz", columns={"id_matriz"})})
 * @ORM\Entity
 */
class Resultados
{
    /**
     * @var string
     *
     * @ORM\Column(name="nombre_resultado", type="string", length=200, nullable=false)
     */
    private $nombreResultado;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_resultado", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idResultado;

    /**
     * @var \AppBundle\Entity\Matriz
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Matriz")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_matriz", referencedColumnName="id_matriz")
     * })
     */
    private $idMatriz;


}

