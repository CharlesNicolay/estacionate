

    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h1 class="text-center">Checkout</h1>

                <div class="cart2">
                    <h2>Productos en el Carrito</h2>
                    <ul id="cart-items" class="list-group mb-3">
                        <!-- Aquí se llenarán los productos del carrito -->
                    </ul>
                    <h4>Total: $<span id="total-price">0</span></h4>
                </div>
            </div>
            <div class="col-md-6">
                <h2>Información de Facturación</h2>
                <form id="checkout-form">
                    <div class="mb-3">
                        <label for="name" class="form-label">Nombre Completo</label>
                        <input type="text" class="form-control" id="name" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Correo Electrónico</label>
                        <input type="email" class="form-control" id="email" required>
                    </div>
                    <div class="mb-3">
                        <label for="address" class="form-label">Dirección</label>
                        <input type="text" class="form-control" id="address" required>
                    </div>
                    <div class="mb-3">
                        <label for="payment-method" class="form-label">Método de Pago</label>
                        <select class="form-select" id="payment-method" required>
                            <option value="" disabled selected>Seleccione un método</option>
                            <option value="credit-card">Tarjeta de Crédito</option>
                            <option value="paypal">PayPal</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-success">Finalizar Compra</button>
                </form>
            </div>  
        </div>
    </div>

    <script>
        const cartItems = [
            { name: 'Producto 1', price: 10 },
            { name: 'Producto 2', price: 15 },
            { name: 'Producto 3', price: 20 },
        ]; // Ejemplo de productos en el carrito

        function renderCart() {
            const cartList = document.getElementById('cart-items');
            const totalPriceElement = document.getElementById('total-price');
            let totalPrice = 0;

            cartList.innerHTML = ''; // Limpiar lista actual

            cartItems.forEach(item => {
                const listItem = document.createElement('li');
                listItem.className = 'list-group-item d-flex justify-content-between align-items-center';
                listItem.innerText = `${item.name} - $${item.price}`;
                cartList.appendChild(listItem);
                totalPrice += item.price;
            });

            totalPriceElement.innerText = totalPrice;
        }

        document.getElementById('checkout-form').addEventListener('submit', function(event) {
            event.preventDefault();
            alert('Compra finalizada con éxito. ¡Gracias por su compra!');
            // Aquí puedes agregar la lógica para procesar el pago
        });

        // Renderizar el carrito al cargar la página
        renderCart();
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
