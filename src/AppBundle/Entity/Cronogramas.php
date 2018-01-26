<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Cronogramas
 *
 * @ORM\Table(name="cronogramas")
 * @ORM\Entity
 */
class Cronogramas
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id_cronograma", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idCronograma;


}

