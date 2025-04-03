// src/Controller/ProductController.php
namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ProductController extends AbstractController
{
    /**
     * @Route("/products", name="product_list")
     */
    public function list(): Response
    {
        // Przykładowe dane produktów
        $products = [
            ['name' => 'Product 1', 'price' => 100],
            ['name' => 'Product 2', 'price' => 200],
            ['name' => 'Product 3', 'price' => 300],
        ];

        return $this->render('product/list.html.twig', [
            'products' => $products,
        ]);
    }

    /**
     * @Route("/product/{id}", name="product_show")
     */
    public function show(int $id): Response
    {
        // Przykładowe dane pojedynczego produktu
        $product = [
            'name' => 'Product ' . $id,
            'description' => 'Description of Product ' . $id,
            'price' => 100 * $id
        ];

        return $this->render('product/show.html.twig', [
            'product' => $product,
        ]);
    }
}

