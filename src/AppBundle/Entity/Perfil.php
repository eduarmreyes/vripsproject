<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Perfil
 *
 * @ORM\Table(name="perfil", indexes={@ORM\Index(name="fk_perfil_proyecto", columns={"id_proyecto"})})
 * @ORM\Entity
 */
class Perfil
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id_facultad", type="integer", nullable=false)
     */
    private $idFacultad;

    /**
     * @var string
     *
     * @ORM\Column(name="decano", type="string", length=100, nullable=false)
     */
    private $decano;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_area_conocimiento", type="integer", nullable=false)
     */
    private $idAreaConocimiento;

    /**
     * @var string
     *
     * @ORM\Column(name="coordinador_proyecto", type="string", length=200, nullable=false)
     */
    private $coordinadorProyecto;

    /**
     * @var string
     *
     * @ORM\Column(name="equipo_responsable", type="string", length=600, nullable=false)
     */
    private $equipoResponsable;

    /**
     * @var string
     *
     * @ORM\Column(name="institucion_contraparte", type="string", length=300, nullable=false)
     */
    private $institucionContraparte;

    /**
     * @var string
     *
     * @ORM\Column(name="nombre_proyecto", type="string", length=500, nullable=false)
     */
    private $nombreProyecto;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_linea", type="integer", nullable=false)
     */
    private $idLinea;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_ods", type="integer", nullable=false)
     */
    private $idOds;

    /**
     * @var integer
     *
     * @ORM\Column(name="total_poblacion", type="integer", nullable=false)
     */
    private $totalPoblacion;

    /**
     * @var integer
     *
     * @ORM\Column(name="p_hombres", type="integer", nullable=false)
     */
    private $pHombres;

    /**
     * @var integer
     *
     * @ORM\Column(name="p_mujeres", type="integer", nullable=false)
     */
    private $pMujeres;

    /**
     * @var string
     *
     * @ORM\Column(name="area_geografica", type="string", length=600, nullable=false)
     */
    private $areaGeografica;

    /**
     * @var string
     *
     * @ORM\Column(name="presentacion", type="string", length=2000, nullable=false)
     */
    private $presentacion;

    /**
     * @var string
     *
     * @ORM\Column(name="antecedentes", type="string", length=1500, nullable=false)
     */
    private $antecedentes;

    /**
     * @var string
     *
     * @ORM\Column(name="justificacion", type="string", length=4500, nullable=false)
     */
    private $justificacion;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_perfil", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idPerfil;

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

