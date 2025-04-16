<?php
namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class HelloController
{
	#[Route('/', name:'Home')]
	public function home(): Response
	{
		// geri dönüş
		return new Response('<html><body>Hello Ramazan</body></html>');
	}

}
