<?php
/**
 * Part of the Sebwite PHP packages.
 *
 * MIT License and copyright information bundled with this package in the LICENSE file
 */
namespace Sebwite\Support\Traits;

/**
 * Dot Array Object Access Trait
 *
 * @author    Sebwite Dev Team
 * @copyright Copyright (c) 2015, Sebwite
 * @license   https://tldrlegal.com/license/mit-license MIT License
 * @package   Sebwite\Support
 */
trait DotArrayObjectTrait
{
    /**
     * Dynamically access container services.
     *
     * @param  string  $key
     * @return mixed
     */
    public function __get($key)
    {
        return $this[$key];
    }

    /**
     * Dynamically set container services.
     *
     * @param  string  $key
     * @param  mixed   $value
     * @return void
     */
    public function __set($key, $value)
    {
        $this[$key] = $value;
    }
}
