    <div class="cart" data-bs-toggle="modal" data-bs-target="#cartModal">
         <i class="fas fa-shopping-cart"></i> <span id="cart-count">0</span>
    </div>

    <div class="categories">
        <button>Manga</button>
        <button>Fantasia</button>
        <button>Juvenil</button>
        <button>Romance</button>
        <button>Para niños</button>
        <button>Terror</button>
         

    </div>
            
    <div class="search-bar">
        <input type="text" placeholder="Buscar título...">
    </div>

    <div class="container">
        <!-- Tendencia -->
        <h2 class="section-title">TENDENCIA</h2>
        <div class="row book-section">
            <div class="col-lg-4 col-md-6">
                <div class="book-card product">
                    <img src="https://m.media-amazon.com/images/I/81Pv1yGjcXL._UF1000,1000_QL80_.jpg" alt="Throne of Glass"
                        width: 148px;
                        height: 226px;
                        left: 128px;
                        top: 395px;
                        border-radius: 25px;>

                    <p class="description">Throne of Glass eBook Bundle<br>de Sarah J. Maas</p>
                    <p class="price">
                        <button onclick="addToCart('Throne of Glass eBook Bundle', 145.44)">S/. 145,44</button></p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="book-card" product>
                    <img src="https://m.media-amazon.com/images/I/812KgDJPd8L._UF1000,1000_QL80_.jpg" alt="Pumpkin Spice Cafe"
                        width: 148px;
                        height: 226px;
                        left: 128px;
                        top: 395px;
                        border-radius: 25px;>
                    <p class="description">The Pumpkin Spice Cafe<br>de Laurie Gilmore</p>
                    <p class="price">
                        <button onclick="addToCart('The Pumpkin Spice Cafe', 67.71)">S/. 67,71</button></p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="book-card">
                    <img src="https://m.media-amazon.com/images/I/81WUVcGdvDL._UF1000,1000_QL80_.jpg" alt="First Lie Wins"
                        width: 148px;
                        height: 226px;
                        left: 128px;
                        top: 395px;
                        border-radius: 25px;>
                    <p class="description">First Lie Wins<br>de Ashley Elston</p>
                    <p class="price">
                        <button onclick="addToCart('First Lie Wins', 52.66)">S/. 52,66</button></p>
                </div>
            </div>
        </div>
            <button class="arrow-button button-1">
            <div class="icon">
                <!-- Ícono de flecha para el primer botón -->
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
                </svg>
            </div>
            </button>

        <!-- Últimas Publicaciones -->
        <h2 class="section-title">ÚLTIMAS PUBLICACIONES</h2>
        <div class="row book-section">
            <div class="col-lg-4 col-md-6">
                <div class="book-card">
                    <img src="https://i.ebayimg.com/thumbs/images/g/yDoAAOSwvP9mSzAH/s-l1200.jpg" alt="The Women">
                    <p class="description">The Women<br>de Kristin Hannah</p>
                    <p class="price">
                        <button>S/. 56,39</button></p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="book-card">
                    <img src="https://m.media-amazon.com/images/I/91LwG3PqHzL._UF1000,1000_QL80_.jpg" alt="A Tribute of Fire">
                    <p class="description">A Tribute of Fire<br>de Sariah Wilson</p>
                    <p class="price">
                        <button>S/. 18,81</button></p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="book-card">
                    <img src="https://thebookcoverdesigner.com/wp-content/uploads/2023/03/Girl-Next-Door.jpg" alt="The Girl Next Door">
                    <p class="description">The Girl Next Door<br>de Jack Ketchum</p>
                    <p class="price">
                        <button>S/. 30,00</button></p>
                </div>
            </div>
            <!-- Segundo botón (700px más abajo) -->
        <button class="arrow-button button-2">
        <div class="icon">
            <!-- Ícono de flecha para el segundo botón -->
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
            </svg>
        </div>
        </button>
        </div>
    </div>

     <!-- Modal del carrito -->
    <div class="modal fade" id="cartModal" tabindex="-1" aria-labelledby="cartModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="cartModalLabel">Carrito de Compras</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <ul id="cart-items" class="list-group"></ul>
                </div>
                <div class="modal-footer">
                    <a href="<?php echo base_url('checkout'); ?>"  class="btn btn-secondary" >Checkout</a>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>

   

 <script>
        let cartCount = 0;
        const cartItems = [];

        function addToCart(productName, productPrice) {
            cartCount++;
            document.getElementById('cart-count').innerText = cartCount;
            cartItems.push({ name: productName, price: productPrice });
            alert('¡Producto añadido al carrito!');
        }

        function updateCartModal() {
            const cartList = document.getElementById('cart-items');
            cartList.innerHTML = ''; // Limpiar la lista actual

            cartItems.forEach((item, index) => {
                const listItem = document.createElement('li');
                listItem.className = 'list-group-item d-flex justify-content-between align-items-center';
                listItem.innerText = `${item.name} - $${item.price}`;
                const removeButton = document.createElement('button');
                removeButton.innerText = 'Eliminar';
                removeButton.className = 'btn btn-danger btn-sm';
                removeButton.onclick = function() {
                    removeFromCart(index);
                };
                listItem.appendChild(removeButton);
                cartList.appendChild(listItem);
            });
        }

        function removeFromCart(index) {
            cartItems.splice(index, 1); // Elimina el producto del carrito
            if(cartCount > 0){
                cartCount--; // Disminuye el contador
                document.getElementById('cart-count').innerText = cartCount; // Actualiza el contador en la interfaz
                updateCartModal(); // Actualiza la lista en el modal
                alert('¡Producto eliminado del carrito!');
            }
        }

        document.addEventListener('DOMContentLoaded', function() {
            const cartButton = document.querySelector('.cart');
            cartButton.addEventListener('click', updateCartModal);
        });
    </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
