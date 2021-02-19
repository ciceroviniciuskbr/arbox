<header class="container-fluid nav-wrapper" id="topo">
    <div class="container">
        <div class="row">
            <div class="col-6 col-md-3 col-lg-2 col-logo">
                <a href="{{ route(\App::getLocale().'.home') }}" title="Agro Brasil Comex">
                    <img src="{{ asset('images/logo-agro-brasil-comex.png') }}" class="img-fluid" alt="Agro Brasil Comex" title="Agro Brasil Comex" />
                </a>
            </div>
            
            <div class="col-2 col-md-1 d-lg-none btn-menu">
                <button class="navbar-toggler btn collapsed" type="button" data-toggle="collapse" data-target="#menuLinks" aria-controls="menuLinks" aria-expanded="false">
                    <i class="fas fa-bars icon"></i>
                </button>
            </div>
        </div>
    </div>
</header>