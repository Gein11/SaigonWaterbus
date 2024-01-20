 <div class="container">
        <div class="row">
            <div class="col-12">
    <nav class="navbar-expand-lg navbar-light bg-light">
<div class="d-flex align-items-center">
    <h1 class="text-center me-auto">Delete Ticket</h1>
    <div>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
    <div class="ms-auto" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item w-100">
                <input class="form-control" type="search" placeholder="Search Ticket" aria-label="Search">
            </li>
            <li class="nav-item ms-2">
                <button class="btn btn-outline-success" type="button">Search</button>
            </li>
        </ul>
    </div>
</div>


    </nav>
                
                <table class="table mt-5">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Ticket Description</th>
                            <th scope="col">Time</th>
                            <th scope="col">Date</th>
                            <th scope="col">Destination</th>
                            <th scope="col">Origin</th>
                            <th scope="col">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Ticket 1 Description</td>
                            <td>12:00 PM</td>
                            <td>2024-01-15</td>
                            <td>Destination 1</td>
                            <td>Origin 1</td>
                            <td>
                                <button type="button" class="btn btn-warning btn-sm mx-1" data-bs-toggle="modal" data-bs-target="#editTicketModal">
                                    <i class="fas fa-edit"></i> Edit
                                </button>
                                <button type="button" class="btn btn-danger btn-sm mx-1">
                                    <i class="fas fa-trash"></i> Delete
                                </button>
                            </td>
                        </tr>
                        <!-- Add more rows as needed -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>