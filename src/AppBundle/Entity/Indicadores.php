<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Indicadores
 *
 * @ORM\Table(name="indicadores", indexes={@ORM\Index(name="fk_indicador_matriz", columns={"id_matriz"})})
 * @ORM\Entity
 */
class Indicadores
{
    /**
     * @var integer
     *
     * @ORM\Column(name="nombre_indicador", type="integer", nullable=false)
     */
    private $nombreIndicador;

    /**
     * @var integer
     *
     * @ORM\Column(name="objetivo", type="integer", nullable=false)
     */
    private $objetivo;

    /**
     * @var integer
     *
     * @ORM\Column(name="medio_verificacion", type="integer", nullable=false)
     */
    private $medioVerificacion;

    /**
     * @var integer
     *
     * @ORM\Column(name="supuesto", type="integer", nullable=false)
     */
    private $supuesto;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_indicadores", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idIndicadores;

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

